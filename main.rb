require_relative "account"
require_relative "atm"

file = File.open("users.csv", "r")
users = []
count = 0

file.each_line do |line|
	a = line.split(',')
	users[count] = Account.new(a[0], a[1], a[2])
	count += 1
end

puts "Welcome to the ATM of the Future"
puts "Please input your pin to begin."

inputpin = gets.to_i
for i in 1..users.length
	if inputpin == users[i-1].pin
		puts "Welcome " + users[i-1].name + " To The Bank!"
		puts
		def run_action(users, i, inputpin)
			puts "What would you like to do? 1) Withdraw 2) Deposit 3) Balance 4) Leave"
			response = gets.to_i
			if response == 1
				users[i-1].withdraw(inputpin)
				run_action(users, i, inputpin)
			elsif response == 2
				users[i-1].deposit(inputpin)
				run_action(users, i, inputpin)
			elsif response.to_i == 3
				users[i-1].balance
				run_action(users, i, inputpin)
			elsif response == 4
				puts "Good Bye " + users[i-1].name + " Come Back Later!"
				return
			else
				puts "A Error Occured, Please Try Again Later"
				run_action(users, i, inputpin)
			end
		end
		run_action(users, i, inputpin)
	end
end
require_relative "account"

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

inputpin = gets
for i in 1..users.length
  if inputpin == users[i-1].pin
    puts "Welcome " + users[i-1].name + " To The Bank!"
    puts "You have this much money: $" + users[i-1].money
    puts "This is your pin: " + users[i-1].pin
    puts "What would you like to do Now? 1) Withdraw 2) Deposit 3) Balance"
    response = gets
    if response.to_i == 1 #Withdraw
      users[i-1].withdraw
    elsif response.to_i == 2 #Deposit
      users[i-1].deposit
    elsif response.to_i == 3 #Balance
      puts "This is Your Balance Right Now: $" + users[i-1].money
    else
      puts "A Error Occured. Please Try Again!"
    end
  end
end
class Atm

	attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money.to_i
		@pin = pin.to_i
	end

	def withdraw(pin)
		if pin == @pin
			puts "How Much Money Would You Like to Withdraw?"
			amount = gets.to_i
			if (@money - amount) >= 0
				puts "You are Withdrawing $" + amount.to_s
				@money -= amount
				puts "You Currently Have $" + @money.to_s
			else
				puts "This User Does Not Have Enough Money."
			end
		else
			puts "The PIN is Incorrect."
		end
	end

	def deposit(pin)
		if pin == @pin
			puts "How Much Money Would You Like to Deposit?"
			amount = gets.to_i
			puts "You are Depositing $" + amount.to_s
			@money += amount
			puts "You Currently Have $" + @money.to_s
		else
			puts "The PIN is Incorrect."
		end
	end

	def balance
		puts "You Have a Balance of $" + @money.to_s
	end

end
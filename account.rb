class Account

	attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money.to_i
		@pin = pin.to_i
	end


	def withdraw(pin)
		if pin == @pin
			puts "How much money would you like to withdraw?"
			amount = gets.to_i
			if (@money - amount) >= 0
				puts "Withdrawing $" + amount.to_s
				@money -= amount
				puts "You now have $" + @money.to_s
			else
				puts "The user does not have enough money."
			end
		else
			puts "The PIN is incorrect."
		end
	end

	def deposit(pin)
		if pin == @pin
			puts "How much money would you like to deposit?"
			amount = gets.to_i
			puts "Depositing $" + amount.to_s
			@money += amount
			puts "You now have $" + @money.to_s
		else
			puts "The PIN is incorrect."
		end
	end

	def balance
		puts "You have $" + @money.to_s
	end

end
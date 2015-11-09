class Account

	attr_accessor :name, :money, :pin

	def initialize(name, money, pin)
		@name = name
		@money = money
		@pin = pin
	end

	def withdraw 
		if @pin == pin
			puts "How Much Would You Like to Withdraw?"
			amountD = gets
			puts "Withdrawing $" + amountD.to_s
			@money = @money + amountD
			puts "This is How Much You have Now: $" + @money 
		end
	end

	def deposit
		if @pin == pin
			puts "How Much Would You Like to Deposit?"
			amountD = gets
			puts "Depositing $" + amountD.to_s
			@money = @money + amountD
			puts "This is How Much You have Now: $" + @money 
		end
	end
end

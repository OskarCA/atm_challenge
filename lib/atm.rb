class Atm
  attr_accessor :funds, :status
    #
    def initialize
        @funds = 1000
    end

    def withdraw(amount)
        @funds -= amount
    end

    def account
        @balance = 100
    end
    
end

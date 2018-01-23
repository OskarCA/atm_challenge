class Atm
  attr_accessor :funds
    #Comment
    def initialize
        @funds = 1000
    end
    def withdraw(amount)
        @funds -= amount
    end

end

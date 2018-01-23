class Atm
  attr_accessor :funds, :status
    #
    def initialize
        @funds = 1000
    end

    def account
        @balance = 100
    end
    # NEW
    def withdraw(amount, account)
        case
        when amount > account.balance
            return
        else
            @funds -= amount
            account.balance = account.balance - amount
            { status: true, message: 'success', date: Date.today, amount: amount }
    end
  end
end

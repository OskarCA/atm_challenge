require "atm.rb"
require "date"

class Account
    attr_accessor :pin_code, :balance, :account_status, :exp_date, :owner

  STANDARD_VALIDITY_YRS = 5

  def initialize(attrs = {})
     @exp_date = exp_date
     @pin_code = generate_pin
     @balance = 0
     @account_status = :deactivated
     @owner = set_owner(attrs[:owner])
   end


 def deactivate
     account_status = :deactivated
 end

 def generate_pin
     rand(1000..9999)
 end

 def exp_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%y')
 end

private

 def set_owner(obj)
   obj.nil? ? missing_owner : @owner = obj
 end

 def missing_owner
   raise 'An Account owner is required'
 end

end

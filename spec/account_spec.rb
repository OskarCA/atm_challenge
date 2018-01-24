require './lib/account.rb'
require 'date'

describe Account do

    it 'checks length of a number' do
        number = random_pin
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end

    it 'is expected to have an expiry date initialize' do
    expected_date = Date.today.next_year(5).strftime("%m/%y")
    expect(subject.exp_date).to eq expected_date
    end

end
# Comment
  def random_pin
    rand(1000..9999)
  end

  def set_expire_date
    Date.today.next_year(STANDARD_VALIDITY_YRS).strftime('%m/%Y')
  end

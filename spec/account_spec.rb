require './lib/account.rb'
require 'date'

describe Account do
    it 'checks length of a number' do
        number = random_pin
        number_length = Math.log10(number).to_i + 1
        expect(number_length).to eq 4
    end
end
# Comment
def random_pin
    rand(1000..9999)
end

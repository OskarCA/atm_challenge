require './lib/atm.rb'

describe Atm do
    let(:account) { instance_double('Account') }
    # New line
    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end

    # New line

    it 'has 1000$ on initialize' do
        expect(subject.funds).to eq 1000
    end

    # New line
    it 'funds are reduced at withdraw' do
        subject.withdraw 50
        expect(subject.funds).to eq 950
    end
end

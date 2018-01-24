require './lib/atm.rb'
require  'date'

describe Atm do
    let(:account) { instance_double('Account', pin_code: '1234') }
    # New line
    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end

    it 'allow withdraw if account has enough balance' do
        expect_output = { status: true, message: 'success', date: Date.today, amount: 45 }
        expect(subject.withdraw(45, '1234', account)).to eq expect_output
    end

    # New line

    it 'has 1000$ on initialize' do
        expect(subject.funds).to eq 1000
    end

    # New line
    it 'funds are reduced at withdraw' do
        subject.withdraw(50, '1234', account)
        expect(subject.funds).to eq 950
    end

    it 'rejects withdraw if account has insufficient funds' do
      expected_output = { status: false, message: 'insufficient funds in ATM', date: Date.today }
      expect(subject.withdraw(105, '1234', account)). to eq expected_output
    end

    it 'reject withdraw if ATM is insufficient funds' do
        subject.funds = 50
<<<<<<< HEAD
        expected_output = { status: false, message: 'insufficient funds in AT', date: Date.today }
        expect(subject.withdraw(105, account)).to eq expected_output
=======
        expected_output = { status: false, message: 'insufficient funds in ATM', date: Date.today }
        expect(subject.withdraw(105, '1234', account)).to eq expected_output
    end

    it 'reject withdraw if pin is wrong' do
      expected_output = { status: false, message: 'wrong pin', date: Date.today }
      expect(subject.withdraw(50, 9999, account)).to eq expected_output
>>>>>>> e7a893d4eb981a0d4c2c53bf7fc277eb45f1af75
    end


end

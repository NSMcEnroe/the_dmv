require 'spec_helper'
require './lib/registrant'

RSpec.describe Registrant do
    before(:each) do
        @registrant_1 = Registrant.new('Bruce', 18, true )
        @registrant_2 = Registrant.new('Penny', 15 )
    end
    
    describe '#initialize' do
        it 'can initialize' do
            expect(@registrant_1).to be_a(Registrant)
            expect(@registrant_2).to be_a(Registrant)
        end
    end

    describe '#name' do
        it 'can return a name' do
            expect(@registrant_1.name).to eq("Bruce")
            expect(@registrant_2.name).to eq("Penny")
        end
    end

    describe '#age' do
        it 'can return an age' do
            expect(@registrant_1.age).to eq(18)
            expect(@registrant_2.age).to eq(15)
        end
    end

end
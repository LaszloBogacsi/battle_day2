require 'player'

describe Player do

subject(:john) { Player.new('John') }
subject(:mary) { Player.new('Mary') }

    it 'gives a player a name' do
      expect(john.name).to eq 'John'
    end

    it 'reduces players hp by 10' do
      expect{john.attack(mary)}.to change{mary.hp}.by(-10)
    end
end

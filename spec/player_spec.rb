require 'player'

describe Player do

subject(:john) { Player.new('John') }
subject(:mary) { Player.new('Mary') }

    it 'gives a player a name' do
      expect(john.name).to eq 'John'
    end

end

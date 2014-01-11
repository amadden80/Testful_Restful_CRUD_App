require 'spec_helper'

describe Person do
	describe 'given a person' do 
		before do 
			@person = Person.new name: 'Andrew Madden'
		end
		describe '#to_s' do 
			it 'displays the persons name' do
				@person.to_s.should == 'Andrew Madden'
			end
		end
	end
end

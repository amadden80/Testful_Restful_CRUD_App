require 'spec_helper'

# Testing index!!!
describe "viewing people" do 
	before do 
		@andrew = Person.create name: "Andrew"
		@omar = Person.create name: "Omar"
		visit people_path
	end
	it "should have the persons name" do 
		page.should have_content(@andrew)
		page.should have_content(@omar)
	end
end


#Testing Show!!!!
describe 'viewing a person' do 
	describe 'given a person' do 
		before do 
			@matt = Person.create name: 'Matt'
		end
		describe 'on a persons show page' do 
			before do 
				visit person_path(@matt)
			end
			it "shows the persons name" do 
				page.should have_content('Matt')
			end
		end
	end
end


#Testing Create!!!!
describe 'creating a person' do 
	describe 'starting on a new person page' do 
		before do 
			visit new_person_path
		end
		it 'can create a person' do 
			name = 'Mike'
			fill_in 'name', {with: name}
			click_button 'submit'
			page.should have_content(name)
		end
	end
end

#Testing Update!!!!
describe 'updating a person' do
	describe 'given a person' do  
		before do 
			@person = Person.create name: "Neel"
		end
		describe 'starting on a edit person page' do
			before do 
				visit edit_person_path(@person)
			end
			it 'can edit a person' do 
				fill_in 'name', {with: 'Jamal'}
				click_button 'submit'
				@person.reload.name.should == 'Jamal'
				page.should have_content('Jamal')
			end
		end
	end
end




#Testing Delete!
describe 'deleting a person' do 
	describe 'given a person' do 
		before do 
			@bad_person = Person.create name: "Bad Andrew"
		end
		describe 'starting on a persons show page' do 
			before do 
				visit person_path(@bad_person)
			end
			it 'can delete the person' do 
				click_button 'delete'
				current_path.should == people_path
				page.should_not have_content(@bad_person.name)
			end
		end
	end
end













# require 'spec_helper'

# # Testing index!!!
# describe "viewing people" do 
# 	before do 
# 		@andrew = Person.create name: "Andrew"
# 		@omar = Person.create name: "Omar"
# 		visit '/people'
# 	end
# 	it "should have the persons name" do 
# 		page.should have_content(@andrew)
# 		page.should have_content(@omar)
# 	end
# end


# #Testing Show!!!!
# describe 'viewing a person' do 
# 	describe 'given a person' do 
# 		before do 
# 			@matt = Person.create name: 'Matt'
# 		end
# 		describe 'on a persons show page' do 
# 			before do 
# 				visit "/people/#{@matt.id}"
# 			end
# 			it "shows the persons name" do 
# 				page.should have_content('Matt')
# 			end
# 		end
# 	end
# end


# #Testing Create!!!!
# describe 'creating a person' do 
# 	describe 'starting on a new person page' do 
# 		before do 
# 			visit '/people/new'
# 		end
# 		it 'can create a person' do 
# 			name = 'Mike'
# 			fill_in 'name', {with: name}
# 			click_button 'submit'
# 			page.should have_content(name)
# 		end
# 	end
# end

# #Testing Update!!!!
# describe 'updating a person' do
# 	describe 'given a person' do  
# 		before do 
# 			@person = Person.create name: "Neel"
# 		end
# 		describe 'starting on a edit person page' do
# 			before do 
# 				visit "/people/#{@person.id}/edit"
# 			end
# 			it 'can edit a person' do 
# 				fill_in 'name', {with: 'Jamal'}
# 				click_button 'submit'
# 				@person.reload.name.should == 'Jamal'
# 				page.should have_content('Jamal')
# 			end
# 		end
# 	end
# end




# #Testing Delete!
# describe 'deleting a person' do 
# 	describe 'given a person' do 
# 		before do 
# 			@bad_person = Person.create name: "Bad Andrew"
# 		end
# 		describe 'starting on a persons show page' do 
# 			before do 
# 				visit "/people/#{@bad_person.id}"
# 			end
# 			it 'can delete the person' do 
# 				click_button 'delete'
# 				current_path.should == '/people'
# 				page.should_not have_content(@bad_person.name)
# 			end
# 		end
# 	end
# end
















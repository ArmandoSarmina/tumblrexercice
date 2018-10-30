require 'rails_helper.rb'

feature 'Creating Post' do
	scenario 'can create post' do
		#Visit root route
		visit '/#header'
		# Click create post link
		find_button('Make Post').click
		#fill the form with required information and lenght
		fill_in 'Title', with: 'title'
		fill_in 'Body', with: 'body'
		# Click submit post button
		click_button('Create Post')
		# page should show the content submitted
		expect(page).to have_content('title')
		expect(page).to have_content('body')
	end
end


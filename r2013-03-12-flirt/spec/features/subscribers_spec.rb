## Tests features -- anything to do with subscribers and their functionality

require 'spec_helper'

#'Subscribers' is just a description -- do not put a class in here
#
describe 'Subscribers' do
  describe 'GET /' do
    it 'displays register button' do
      visit root_path
      page.should have_link('Register')
    end
  end
  describe 'GET /subscribers/new' do
    it 'displays the create subscriber button', :js=>true do
      visit root_path
      click_link('Register')
      page.should have_button('Create User')
      page.should have_button('Cancel')
    end
  end
  describe 'JS cancel_subscriber_form()' do
    it 'removes the create subscriber form', :js=>true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create User')
    end
  end
  describe 'POST /subscribers' do
    it 'creates a new subscriber', :js=>true do
      visit root_path
      click_link('Register')
      fill_in('Username', :with=>'Bob')
      fill_in('user_password', :with=>'a')
      fill_in('user_password_confirmation', :with=>'a')
      click_button('Create User')
      page.should_not have_button('Create user')
      page.should have_text('You have successfully created an account!')
      expect(Subscriber.first.user.username).to eq 'Bob'
    end
  end



end

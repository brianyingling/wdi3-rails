require 'spec_helper'

#'Subscribers' is just a description -- do not put a class in here
#
describe 'Session' do
  describe 'GET /' do
    it 'displays a login link' do
      visit root_path
      page.should have_link('Login')
    end
  end

describe 'GET /login' do
    it 'displays the create subscriber button', :js=>true do
      visit root_path
      click_link('Register')
      page.should have_button('Cancel')
      page.should have_button('Start Flirting')
    end
  end

  describe 'JS cancel_login_form()' do
    it 'removes the login form', :js=>true do
      visit root_path
      click_link('Register')
      click_button('Cancel')
      page.should_not have_button('Create User')
    end
  end
end
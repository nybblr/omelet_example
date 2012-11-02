require 'spec_helper'

describe "Users" do
  describe "GET /users" do
    it "should load the correct user welcome screen" do
      get users_path
      response.status.should be(200)

      visit users_path
      #save_and_open_page
    end

    it "should display the welcome message" do
      visit users_path
      page.should have_content 'Hi there!'
    end

    it "should have a link to sign in" do
      visit users_path
      page.should have_content 'sign in'
    end

    it "should not have a link to sign out, since you have yet to sign in" do
      page.should have_no_content 'sign out'
    end
  end

  describe "VIEW /users" do
    it "should not let a user that is not logged in view reports" do
      visit users_path
      page.should have_no_content 'You can see your reports here!'
    end
  end


  describe "PUT /users" do
      it "should not allow you to log in without an existing user account" do
        visit users_path
        click_link 'sign in'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'

        click_button 'Sign in'
        page.should have_no_content 'Hello tester@gmail.com'
      end

      it "should allow you to navigate to a the sign up page" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        page.should have_content 'Sign up'
      end

      it "Succefully follow a path to sign up page and then be returned to the home screen" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        page.should have_content 'Hello tester@gmail.com'

        current_path.should == root_path

        page.should have_content 'tester@gmail.com'
      end

      it "should display your user name when logged in" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        page.should have_content 'Hello tester@gmail.com'

        current_path.should == root_path

        page.should have_content 'tester@gmail.com'
        visit users_path
        page.should have_content 'Hello tester@gmail.com'
      end

      it "should not ask you to sign in when already signed in" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        current_path.should == root_path

        page.should have_no_content 'You might want to sign in'
      end


      it "should display a link to sign out (once signed in)" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        current_path.should == root_path

        visit users_path
        page.should have_content 'need to sign out?'
        click_link 'sign out?'

        page.should have_content 'Signed out successfully.'
        
      end

      it "should not allow you to view reports after sign out" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        current_path.should == root_path

        visit users_path
        page.should have_content 'need to sign out?'
        click_link 'sign out?'
        page.should have_no_content 'view reports'
      end

      it "should not allow a logged out user to view the email of other users" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'

        current_path.should == root_path

        visit users_path
        page.should have_content 'need to sign out?'
        click_link 'sign out?'
        page.should have_no_content 'tester@gmail.com'

      end

      it "should not allow a user to sign up with an invalid password confirmation" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'tester@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'
        page.should have_content "doesn't match confirmation"
      end

      it "should allow multiple users to sign into the application" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'testerONE@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'
        click_link 'sign out?'

        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'testerTWO@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'
        click_link 'sign out?'

        page.should have_no_content 'testerONE@gmail.com'
        page.should have_no_content 'testerTWO@gmail.com'
      end

      it "should not allow creation of a new user with the same name as a current user" do
        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'duplicate@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'
        click_link 'sign out?'

        visit users_path
        click_link 'sign in'
        click_link 'Sign up'

        fill_in 'Email', :with => 'duplicate@gmail.com'
        fill_in 'Password', :with => 'password'
        fill_in 'Password confirmation', :with => 'password'

        click_button 'Sign up'
        page.should have_content 'has already been taken'
      end

    end
end

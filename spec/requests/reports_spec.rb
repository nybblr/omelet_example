require 'spec_helper'

describe "Reports" do
	before do
		visit users_path
    click_link 'sign in'
    click_link 'Sign up'

    fill_in 'Email', :with => 'tester@gmail.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'

    click_button 'Sign up'    
    click_link 'here!'
	end

  describe "GET /reports" do
  	it "should have a link that can sucessfully return a user to the home screen" do
  		 click_link 'back to the homepage?'
  		 current_path.should == root_path
  	end

  	it "should dislpay all the reports" do
      #
      click_link 'show'
  	end


    it "should gets a report to display" do
      #
      click_link 'Display'
    end
  end

  describe "PUT /reports" do
    it "should allow a user to edit a report's metadata" do
      click_link 'Edit'
    end
  end

  describe "CREATE /reports" do
    it "should allow a user to generate a new report" do
      click_link 'make a new report?'
    end
  end

	describe "DELETE /reports" do
    it "should have a link to delete a previously generated report" do
    		#find("#report_#{@report.id}").click_link "Delete"
    		#page.should have_content 'Report has been deleted'
    		#page.should have_no_content 'Sales report'
        click_link 'Delete'
    end
  end
end

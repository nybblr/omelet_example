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
  	end


    it "should gets a report to display" do
      #
    end
  end

  describe "PUT /reports" do
    it "edits a task" do
      #
    end
  end

	describe "DELETE /reports" do
    it "should have a link to delete a previously generated report" do
    		#find("#report_#{@report.id}").click_link "Delete"
    		#page.should have_content 'Report has been deleted'
    		#page.should have_no_content 'Sales report'
    end
  end
end

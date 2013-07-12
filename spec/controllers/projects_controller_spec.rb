require 'spec_helper'

describe ProjectsController do
	let (:user) do
		create_user!
	end

	let(:project) { FactoryGirl.create(:project) }

	it "displays an error message for missing project" do
		sign_in(:user,user)
		get :show, :id => "not here"
		response.should redirect_to(projects_path)
		flash[:alert].should eql("The project you were looking for could not be found.")
	end

	{ "new" => "get",
	"create" => "post",
	"edit" => "get",
	"update" => "put",
	"destroy" => "delete" }.each do |action, method|
		it "cannot access the #{action} action" do
			sign_in(:user, user)
			send(method, action.dup, :id => project.id)
			response.should redirect_to(root_path)
			flash[:alert].should eql("You must be an admin to do that")
		end

	end

	it "cannot access show action" do
		sign_in(:user,user)
		get :show, :id => project.id
		response.should redirect_to(projects_path)
		flash[:alert].should eql("The project you were looking for could not be found.")
	end

end

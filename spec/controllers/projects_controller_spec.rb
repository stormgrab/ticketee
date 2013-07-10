require 'spec_helper'

describe ProjectsController do
	let (:user) do
		user = FactoryGirl.create(:user)
		user.confirm!
		user
	end

	let(:project) { FactoryGirl.create(:project) }

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

end

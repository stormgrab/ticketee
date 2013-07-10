class Admin::UsersController < Admin::BaseController
	def index
		@users = User.all(:order => "email")
	end

	def new
		@user = User.new
	end

	def create
		admin = params[:user].delete(:admin)
		@user = User.new(params[:user])
		@user.admin = admin == "1"
		if @user.save
			redirect_to admin_users_path ,:notice => "User has been created"
		else
			flash[:alert] = "User has not been created"
			render :action => "new"
		end
	end
end

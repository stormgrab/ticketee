class Admin::UsersController < Admin::BaseController
	before_filter :find_user, :only => [:show,:edit,:update,:delete]

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

	def show
		
	end

	def edit

	end

	def update
		admin = params[:user].delete(:admin)
		@user.admin = admin == "1"
		
		if params[:user][:password].blank?
			params[:user].delete(:password)
			params[:user].delete(:password_confirmation)
		end

		if @user.update_attributes(params[:user])
			flash[:notice] = "User has been updated."
			redirect_to admin_users_path
		else
			flash[:alert] = "User has not been updated."
			render :action => "edit"
		end
	end


	private
	def find_user
		@user = User.find(params[:id])
	end
end

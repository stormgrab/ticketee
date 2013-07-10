class ProjectsController < ApplicationController
	before_filter :authorize_admin!, :except => [:index,:show]

	def index
		@projects = Project.all
	end

	def show
		@project = Project.find(params[:id])
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(params[:project])
		if @project.save
			redirect_to @project,:notice => "Project has been Created"
		else
			flash[:alert] = "Project could not be created"
			render :action => "new"
		end
	end

	def edit
		@project = Project.find(params[:id])
	end

	def update
		@project = Project.find(params[:id])

		if @project.update_attributes(params[:project])
			redirect_to @project,:notice => "Project has been updated"
		else
			flash[:alert] = "Project could not be updated"
			render :action => "edit"
		end
	end

	def destroy
		@project = Project.find(params[:id])

		if @project.destroy
			redirect_to projects_path , :notice => "Project has been deleted"
		end
	end
end
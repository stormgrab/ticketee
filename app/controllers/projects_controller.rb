class ProjectsController < ApplicationController
	def index

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
		end
	end
end
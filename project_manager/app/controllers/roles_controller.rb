class RolesController < ApplicationController
	respond_to :html
	
	def new
		#project comes from the private method at the bottom
		@role = project.roles.new
		respond_with [project,@role]
	end
	
	def create
		@role = project.roles.new(params[:role])
		new_was_successful = @role.save
		respond_with [project,@role] do |format|
			format.html {
				if new_was_successful
					redirect_to(project_path(project), 
					:notice => "The role #{@role.title} was created")
				else
					render 'new'
				end
			}
		end
	end
	
	def edit
		@role = project.roles.find(params[:id])
		respond_with [project,@role]
	end
	
	def update
		@role = project.roles.find(params[:id])
		update_was_successful = @role.update_attributes(params[:role])
		respond_with [project,@role] do |format|
			format.html {
				if update_was_successful
					redirect_to(project_path(project), 
					:notice => "The role #{@role.title} was saved")
				else
					render 'edit'
				end
			}
		end
	end
	
	def destroy
		role = project.roles.find(params[:id])
		if role.destroy
			flash[:notice] = 'The role was destroyed'
		else
			flash[:alert] = 'The role could not be destroyed'
		end
		respond_with [project,@role] do |format|
			format.html {
				redirect_to(project_path(project))
			}
		end
	end
	
	private
	def	project
		@project ||=Project.find(params[:project_id])
	end
end

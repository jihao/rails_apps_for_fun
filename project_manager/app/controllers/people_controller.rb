class PeopleController < ApplicationController
	before_filter :authenticate, :only => :show
	def index
		@people = [
			'luke-skywalker',
			'darth-vader',
			'authenticate-demo',
		]
	end
	
	def show
		@person = params[:id]
	end
	
	private
	def authenticate
		if params[:id] == "authenticate-demo"
			redirect_to people_path, :notice=>"That page is restricted"
		end
	end
end

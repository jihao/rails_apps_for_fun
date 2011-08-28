class Project < ActiveRecord::Base
	has_many :roles, :dependent => :destroy
	
	validates :title, :presence =>true
end

class Role < ActiveRecord::Base
	validates  :person_id,  :presence => true
    validates  :project_id, :presence => true
    validates  :status_id,  :presence => true
    validates  :title,      :presence => true
	
	belongs_to :person
	belongs_to :project
	belongs_to :status
	
	attr_protected :project_id
	
	default_scope order("updated_at DESC")
end

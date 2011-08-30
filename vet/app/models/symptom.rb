class Symptom < ActiveRecord::Base
	belongs_to :animal
	belongs_to :problem
end

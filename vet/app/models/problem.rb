class Problem < ActiveRecord::Base
	has_many :symptoms
	has_many :animals, :through => :symptoms
end

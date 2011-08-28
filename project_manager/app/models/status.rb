class Status < ActiveRecord::Base
	default_scope order("position ASC")
end

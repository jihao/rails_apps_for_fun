class Person < ActiveRecord::Base

	has_many :roles
	has_many :projects, :through => :roles

	validates :first_name, :presence =>true
	validates :last_name, :presence =>true
	
	before_save :capitalize
	
	scope :all_lazy, select('*')
	scope :find_lazy, lambda {|id| where(primary_key => id) }
	scope :all_order_last, all_lazy.order('last_name ASC')
	
	def name
		"#{first_name} - #{last_name}"
	end
	
	private
	def capitalize
		self[:first_name] = self[:first_name].capitalize
	end
end

class Animal < ActiveRecord::Base
  belongs_to :category
  has_many :symptoms
  has_many :problems , :through => :symptoms
  
  validates_presence_of :name, :born_at
end

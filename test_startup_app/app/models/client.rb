class Client < ActiveRecord::Base
  has_one :address
  has_many :orders
  has_and_belongs_to_many :roles
  
  scope :week, where("created_at > ?", DateTime.now-7.days).limit(5)
  
  scope :last_week, lambda { where("created_at < ?", Time.zone.now ) }
  
  scope :one_week_before, lambda { |time| where("created_at < ?", time) }
    
end

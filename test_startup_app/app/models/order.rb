class Order < ActiveRecord::Base
  belongs_to :client, :counter_cache => true
end

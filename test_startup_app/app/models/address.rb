class Address < ActiveRecord::Base
  belongs_to :client
  
  before_save do |address|
      puts "before_save detected empty postcode" if address.postcode.blank?
  end
end

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_clients
    make_addresses
    make_orders
  end
end

def make_clients
  10.times do |n|
    Client.create!(:first_name=>"first#{n}",:last_name=>"last#{n}")
  end
end

def make_addresses
  10.times do |n|
    address = Address.create!(:description=>"desc#{n}",:postcode=>"#{n}"*6)
    address.client= Client.find(n+1)
    address.save
  end
end

def make_orders
  
end

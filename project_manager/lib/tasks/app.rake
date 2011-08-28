namespace :app do

	desc "description: Populate the database with development data"
	task :populate=> :environment do
		[
			{:first_name=>'Hao',	:last_name=>"Ji"},
			{:first_name=>'Steve',	:last_name=>"Jobs"},
			{:first_name=>'Bill',	:last_name=>"Gates"},
			{:first_name=>'Steve',	:last_name=>"Ballmer"},
			{:first_name=>'Tim',	:last_name=>"Cook"}
			
		].each do |attributes|
			Person.find_or_create_by_first_name_and_last_name (attributes)
		end
	end
end
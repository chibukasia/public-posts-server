source "https://rubygems.org"

# A domain specific language for creating web applications 
gem "sinatra", "~> 2.1" 

# A fast and simple web server 
gem "thin", "~> 1.8"

# Rack middleware for parsing the request body into params 
gem "rack-contrib", "~> 2.3" 

# Rack middleware to handle CORS requests
gem "rack-cors", "~> 1.1"

# Active record for object relation mapping 
gem "activerecord", "~> 6.1" 

# Configures common rake tasks for working with active record 
gem "sinatra-activerecord", "~> 2.0" 

# Run common task from the command line 
gem "rake", "~>13.0" 

# Provide functionality to interact with sqlite3 database 
gem "sqlite3", "~> 1.4" 

# Require all the files in the folder 
gem "require_all", "~> 3.0" 

# Gems to be used during development of the application 
group :development do 
    gem "pry", "~> 0.14.1"

    # Automaticaly reloads when there are changes 
    gem "rerun" 
end

# Gems to be used while running tests
group :test do 
    gem "database_cleaner", "~> 2.0"
    gem "rack-test", "~> 1.1" 
    gem "rspec", "~> 3.10"
    gem "rspec-json_expectations", "~> 2.2"
end



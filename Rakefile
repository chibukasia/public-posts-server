require_relative "./config/environment" 
require "sinatra/activerecord/rake" 

desc "Start the server" 
task :server do  
    if ActiveRecord::Base.connection.migration_context.needs_migration?
        puts "Migrations are pending. Make sure to run `rake db:migrate` first"
        return 
    end

    # rackup -p PORT  will run on the port specified 
    ENV["PORT"] ||= "9292"
    rackup = "rackup -p #{ENV['PORT']}"

    # reruns auto reloads the server when the files are updated 
    # -b runs in the background. It alsp facilitates the working of binding pry
    exec "bundle exec rerun -b '#{rackup}'"
end


desc "Start the console" 
task :console do 
    ActiveRecord::Base.logger = Logger.new(STDOUT)
    Pry.start
end

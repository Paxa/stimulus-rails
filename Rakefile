desc "Download latest stimulus.js"
task :download do
  require_relative 'lib/stimulus-rails'
  remote_file = Stimulus.download!
  puts "Saved stimulus.js from #{remote_file}"
end
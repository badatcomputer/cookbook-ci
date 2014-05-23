require "bundler/setup"

task :default => [:list]

desc "Lists all the tasks."
task :list do
  puts "Tasks: \n- #{(Rake::Task.tasks).join("\n- ")}"
end

desc "Checks for required dependencies."
task :check do
  puts "Nothing to do yet..."
end

desc "Builds the package."
task :build do
  Rake::Task[:knife_test].execute
end

desc "Fires up the Vagrant box."
task :start do
  sh "vagrant up"
end

desc "Runs knife cookbook test against all the cookbooks."
task :knife_test do
  sh "bundle exec knife cookbook test -a"
end

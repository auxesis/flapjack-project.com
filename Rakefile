Dir['tasks/**/*.rake'].sort.each { |rakefile| load rakefile }

task :default do
  puts 'This is an example rake task.'
end

desc "take site live"
task :deploy do 
  system("rsync -auv -e ssh output/* p:/srv/www/flapjack-project.com/root/")
end

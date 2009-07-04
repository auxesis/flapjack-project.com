Dir['tasks/**/*.rake'].sort.each { |rakefile| load rakefile }

task :default do
  puts 'This is an example rake task.'
end

desc "take site live"
task :deploy do 
  system("rsync -auv -e ssh output/* p:/srv/www/flapjack-project.com/root/")
end

desc "build site"
task :build do
  FileUtils.rm_rf("#{File.join(File.dirname(__FILE__), 'output')}")
  system("nanoc co")
end

desc "deploy site locally"
task :local_deploy do 
  if File.exists?("/srv/www/flapjack-project.com/root/")
    system("rsync -auv --delete -e ssh output/* /srv/www/flapjack-project.com/root/")
  end
end

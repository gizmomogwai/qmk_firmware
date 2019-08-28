task :build do
  sh "make ergodox_ez:kines-ish"
end

task :clean do
  sh "make clean"
end

task :flash do
  sh "teensy_loader_cli -mmcu=atmega32u4 -v -w ergodox_ez_kines-ish.hex"
end

task :default => [:build, :flash]

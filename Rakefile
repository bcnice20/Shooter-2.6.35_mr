task :clean do
  sh 'make clean'
end

task :def do
  device = ENV['device']
  sh 'make shooter_defconfig'
end

task :menu do
  sh 'make menuconfig'
end

task :build do
  sh 'make -j4 ARCH=arm CROSS_COMPILE=/home/brad/android/4.4.4/bin/arm-none-eabi-'
end

task :default => [:clean, :def, :build] do
  puts "done!"
end
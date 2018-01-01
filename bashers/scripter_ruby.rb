#!/usr/bin/env ruby
require 'pry'
require 'yaml'
# YAML::ENGINE.yamler = 'syck'

# pass an argument
kit = ARGV[0]

puts kit ? "arg passed was: #{kit}" : 'no arg passed'

system "echo Hi"

# pg_dump -F c -v thoroughcare_development -f ../db-backups/tc-latest-develop-10-2.dump

# if [ -f $(pwd)/config/database.yml ] #looks in current directory. does not seem to require full file path
# then cat $(pwd)/config/database.yml
# else echo 'it does not exist'
# fi

# wd = system `$(pwd)`

# wd = 'pwd'

# mahdir = system(wd)

mahdir = `pwd`

puts "mah dir is: #{mahdir}"

yammer = `cat config/database.yml`

# puts "yammer: #{yammer}"

#!/usr/bin/env ruby

puts "Help w/ dump or resotre?"
answer = gets.chomp

if answer[/d|D/]
  puts 'pg_dump -F c -v name_of_db -f path/to/folder/name-of-backup.dump'
elsif answer[/r|R/]
  puts 'rake db:drop'
  puts 'rake db:create'
  puts 'rdbms'
  puts 'pg_restore -F c -v -d name_of_db path/to/folder/name-of-backup.dump'
else
  puts 'wut?'
end

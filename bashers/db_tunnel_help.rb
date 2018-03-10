#!/usr/bin/env ruby

puts 'close rails console, rails server, and sidekiq'

puts 'aptible db:list'

puts 'aptible db:tunnel name_of_db'

puts 'update config/database.yml development. change database to the URL output of the tunnel connection'

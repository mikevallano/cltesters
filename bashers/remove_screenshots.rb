#!/usr/bin/env ruby

# screeners = `ls ~/Downloads/screenshots *.png`

# screeners = `find ~/Downloads/screenshots -maxdepth 1 -type f`

screeners =  `ls ~/Downloads/screenshots`

# file_count = `find ~/Downloads/screenshots -maxdepth 1 -type f | wc -l`

file_count = `ls ~/Downloads/screenshots | wc -l`

file_count = file_count.to_i

if file_count > 0
  puts "count of items in screenshots: #{file_count}"

  puts "items in screenshots folder: \n #{screeners}"

  puts "Want to delete all #{file_count} items?"
  answer = gets.chomp
  if answer[/y|Y/]
    # `mv ~/Downloads/screenshots/* ~/.Trash/`
    `rmtrash ~/Downloads/screenshots/*`
    after_count =  `ls ~/Downloads/screenshots | wc -l`
    if after_count.to_i == 0
      puts "Success! All screenshots have been deleted"
    else
      puts "There are #{after_count.strip} items left in screenshots folder"
    end
  else
    puts "Screenshots not deleted"
  end
else
  puts "No files in the screenshots folder"
end


# find ~/Downloads/screenshots -name "^*.DS_STORE" -maxdepth 1 -type f

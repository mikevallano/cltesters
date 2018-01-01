f = File.open("testfile.txt", "w") { |f| f.puts('this is a line')}

File.open("testlooper.txt", "w") do |f|
  3.times do |i|
    f.puts("this is line #{i + 1}")
  end
end


doc = "ids_tester.txt"
contents = File.open(doc, "r"){ |file| file.read }

arr = []
File.open(doc).readlines.each do |line|
   arr << line
end
arr.map(&:strip)

doc = "FMP-CMChange-12-13-17.txt"


arr = File.open(doc).readlines.map(&:strip)

output = File.read(doc)

File.delete(doc)


newfile = File.open('newfile.txt', 'w') {|f| f.puts File.read('id_tester.txt')}


messages = File.open("start_messages.json", 'w'){|f| f.write start_messages.to_json}


messages = File.open("start_messages.txt", 'w'){|f| f.write start_messages}


grouped_pats = pats.group_by{|pat| pat.id}

groupers = File.open("grouped_pats.json", 'w'){|f| f.write grouped_pats.to_json}

groupfile = File.open('grouped_pats.json').read
groupitos = JSON.parse(groupfile)

ass_msgs = Assessment.pluck(:name, :start_assessment_msg, :end_assessment_msg)

ass_msgs.each_with_object({}) do |ass, output|
  output[ass[0]] = [ass[1], ass[2]]
end

ass_select = Assessment.select(:name, :start_assessment_msg, :end_assessment_msg)

ass_hash2 = ass_select.each_with_object({}) do |ass, output|
  output[ass.name] = {'start_msg'=>ass.start_assessment_msg, 'end_msg'=>ass.end_assessment_msg}
end

ass_file = File.open('ass_messages.txt', 'w') {|f| f.write ass_hash2}

cts = ClaimType.select(:name, :procedure_code)
ct_hash = cts.each_with_object({}) do |ct, object|
  object[ct.procedure_code] = ct.name
end


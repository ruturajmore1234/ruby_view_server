require 'erb'

def ParseText(text)
  template = ERB.new text
  return template.result(binding)
end

puts "=============================="
content_string = File.open('erb_example_copy.rb', 'r').read
file_name = 'public/page_generator.html'
main_content = ParseText(content_string)
File.open(file_name, 'w') do |f|
  f.write(main_content)
end
puts "+++++++++++++++++++++++++++++++"
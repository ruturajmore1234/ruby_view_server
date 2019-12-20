require 'erb'

page_string = "
<html>
    <body>
        <p>I am a webpage</p>
        <p>The time is now:</p>
        <%= Time.now %>
    </body>
 </html>"
 name = 'richard'
 loop_string = "<ul>
 <% ['cats', 'dogs'].each do |pet| %>
     <li><%= name.upcase %><li>
 <% end %>
<ul>"    
x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)
template2 = ERB.new(page_string)
puts template2.result(binding)
template3 = ERB.new(loop_string)
puts template3.result(binding)

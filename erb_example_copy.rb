
<html>
    <body>
        <p>I am a webpage</p>
        <p>The time is now:</p>
        <%= Time.now %>
    </body>
 </html>
 <ul>
  <% ['apples', 'oranges', 'bananas'].each do |fruit| %>
    <li>I like to eat <%= fruit %></li>
  <% end %>
</ul>
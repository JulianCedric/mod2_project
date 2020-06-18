<!DOCTYPE html>
<html>
  <head>
    <title>Aim Higher. SuperHire.</title> 
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %> 

    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>

  <style>
    
    body {
      background-image: url("https://wallup.net/wp-content/uploads/2018/03/20/373404-The_Avengers-minimalism-blue.jpg");
      background-repeat: no-repeat;
      background-position: bottom;
      background-size: cover;
      margin-top: 0px;
      margin-left: 25px;
      color: white;
      background-attachment: fixed;
      font-family: avenir;
    }

    ul {
      list-style-type: none;
    #   width: 100%
    #    left: 0;
    #   right: 0;
    #   overflow: hidden;
    #   background-color: dodgerblue;
    #   text-align: center;
    }
    
    li {
      float: left;
      border-right: 1px solid white;
    }

    .nav {
      position: relative;
      top: 0;
      display: flex;
      justify-content: center;
      width: 100%
      list-style-type: none;
      align-items: stretch;
    }

    li a {
      display: block;
      width: 135px;
      height: 25px;
      background-color: dodgerblue;
      color: white;
      text-align: center;
      padding: 14px 16px;
      text-decoration: none;
    }

    li a:hover {
      background-color: dodgerblue;
    }

    <!-- .active { -->
      <!-- background-color: cornflowerblue; -->
    <!-- } -->

    .footer {
      background-color: dodgerblue;
      color: white;
      display: block;
      padding: 0px;
      border: 0px solid white;
      position: fixed;
      left: 0;
      right: 0;
      bottom: 0;
      width: 100%;
      text-align: center;
    }


    
  </style>

  </head>

  <body>


    <div class="nav">
      <ul style="font-size:15px;">
        <!-- <a class="active" href='/superheros'>Home</a></li> -->
        <li class="n"><a href='/superheros'>Home</a></li>

        <!-- <li class="n"><a class="active" href='/search'>Search for Superheroes</a></li> -->
        <!-- <li class="n"><a href='/superheros'>Search for Superheroes</a></li> -->
        <li class="n"><%= link_to "Search Superheroes", superheros_path %></li>
        <li class="n"><a href='/users'>Search Heroes</a></li>
        <% if @current_user %>
          <li class="right"><%= link_to @current_user.welcome, user_path(@current_user) %></li>
          <li class="right"><%= link_to 'Logout', "/sessions/#{@current_user.id}", method: :delete %></li>
        <% else %>
          <li class="right"><%= link_to "Sign Up", new_user_path %></li>
          <li class="right"><%= link_to 'Login', new_session_path, method: :get %></li>
        <% end %>
      </ul>
    </div>

<%= yield %>

    <div class="footer">
      <h1 style="font-size: 25px;">Aim Higher. <i style="font-size: 32px;">SuperHire.</i></h1>
    </div>
  </body>
</html>

# Additional Notes: 
    # Basic Nav Bar & Footer added to app/views/layout/application.html.erb"

# Original Copy: 
    # app/views/layouts/application.html.erb

<!DOCTYPE html>
<html>
  <head>
    <title>Mod2App</title>
    <%= csrf_meta_tags %>
    <%= csp_meta_tag %>

    <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
  </head>

  <body>
    <%= yield %>
  </body>
</html>

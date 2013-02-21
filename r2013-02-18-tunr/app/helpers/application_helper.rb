module ApplicationHelper
  def intellinav
    links = ""
    links += "<li>#{link_to('Genres',genres_path)}</li>"
    links += "<li>#{link_to('Albums',albums_path)}</li>"
    links += "<li>#{link_to('Artists',artists_path)}</li>"
    if @auth.present?
      if @auth.is_admin
        links += "<li>#{link_to('Users', users_path)}</li>"
      end
      links += "<li>#{link_to('Edit',edit_users_path)}</li>"
      links += "<li>#{link_to('Logout ' + @auth.name, login_path, :method=>:delete, :confirm=>'Are you sure?')}</li>"
      links += "<li>#{number_to_currency(@auth.balance)}</li>"
    else
      links += "<li>#{link_to('Create Account', new_user_path)}</li>"
      links += "<li>#{link_to('Login',login_path)}</li>"
    end

  end
end

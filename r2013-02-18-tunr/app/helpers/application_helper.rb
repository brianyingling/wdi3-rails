module ApplicationHelper
  def is_admin
    @auth.present? && @auth.is_admin
  end
  def intellinav
    links = ''
    if @auth.present?
      links += "<li>#{link_to('Users', users_path)}</li>" if @auth.is_admin
      links += "<li>#{link_to('Edit Account',edit_users_path)}</li>"
      links += "<li>#{link_to('Balance: ' + number_to_currency(@auth.balance), edit_users_path)}</li>"
      links += "<li>#{link_to('Logout ' + @auth.name, login_path, :method=>:delete, :confirm=>'Are you sure?')}</li>"

    else
      links += "<li>#{link_to('Create Account', new_user_path)}</li>"
      links += "<li>#{link_to('Login',login_path)}</li>"
    end
  links += "</ul></li>"
  end

  def mixtape_nav
    links = ''
    @auth.mixtapes.each { |mixtape| links += "<li>#{link_to(mixtape.name, mixtape)}</li>" }
    links += "<li>#{link_to('Create New',new_mixtape_path)}</li>"
  end

  def album_nav
    links = ''
    @auth.albums.each {|album| links += "<li>#{link_to(album.name, album)}</li>"}
    links
  end
end

#Naming convention:

#name of file: <name>_controller.rb, always lowercase, always snake-case
#name of class: CamelCase

# Inherits functionality from ApplicationController
# This creates the manager -- that traffic cop.
class HomeController < ApplicationController
  #Routing engine is calling this method
  #Receives params hash -- just like Sinatra
  #In Rails, this is called an 'Action'
  #Action - just a method inside a controller that
  #sends back HTML to the browser.
  # By default, if there's nothing in this method, it will
  # try to render some HTML from views
  def homepage
  end

  def about
  end

  def faq
  end

  def faq2
    render 'faq'
  end

  def lol
  end
end
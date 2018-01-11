class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]


  def welcome
    @header = "This is the welcome page"

  end

def about
  @header = "This is the about page"
end

def contest
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to "/welcome"
end

def kitten
  set_kitten_url
end

def kittens
  set_kitten_url
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

# def secret
# flash[:alert] = "Sorry, you're not authorized to see that page!"
# if
#   redirect_to "/magic_word"
# end
#
def secrets
   if params[:magic_word] == 'magic' then
      render :secrets
   else
     flash[:alert] = "Sorry, you're not authorized to see that page!"
     redirect_to '/about'
   end
 end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
<<<<<<< HEAD
  # protect_from_forgery with: :exception
=======
  protect_from_forgery with: :exception

  skip_before_filter :verify_authenticity_token
>>>>>>> 5fd26586475c09d6d5c55871d3414fcb18a024c7
end

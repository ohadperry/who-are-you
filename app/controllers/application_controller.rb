class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  if Rails.env.production?
    protect_from_forgery with: :exception
  end

  def index

  end
end

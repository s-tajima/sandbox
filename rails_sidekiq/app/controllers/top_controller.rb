class TopController < ApplicationController
  protect_from_forgery with: :exception

  def index
    cookies.permanent.signed[:user_id] = 1
    cookies.permanent[:remember_token] = 1
  end
end

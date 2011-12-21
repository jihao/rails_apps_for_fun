class SessionController < ApplicationController
  def create
    @auth = request.env['omniauth.auth']
  end

  def index
  end

end

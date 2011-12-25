class SessionController < ApplicationController
  def index
  end

  def create
      @auth = request.env['omniauth.auth']
  end

end

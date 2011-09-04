class AuthorizationController < ApplicationController
  def oauth_create
	auth = request.env["omniauth.auth"]

	#access_token = request.env['omniauth.auth']['extra']['access_token']
	#puts "-----------------------------------------"
	#response = access_token.get("http://api.t.sina.com.cn/account/verify_credentials.json")
	#render :text =>  response.body
	#puts response.body
	#puts "-----------------------------------------"
	
	user = current_user
	user.authorizations.find_or_create_by_params({
		:provider => auth["provider"], 
		:uid => auth["uid"],
		:access_token => auth['credentials']['token'],
		:access_token_secret => auth['credentials']['secret']
	})
	flash[:notice] = "#{auth['provider']} user #{auth['uid']} successfully authenticated"
	redirect_to root_url
  end

  def oauth_destroy
  end

end

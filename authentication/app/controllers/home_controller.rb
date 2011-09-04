class HomeController < ApplicationController
  def index
	oauth_retrive
  end

private
	require 'json'
	def oauth_retrive
		user = current_user
		if not user.blank?
			authorization = user.authorizations.first
			if not authorization.blank?
				access_token = authorization.access_token
				access_token_secret = authorization.access_token_secret

				consumer = OAuth::Consumer.new('2148700411','e6f92734ddd410e3e1e2f23cea5d4812',{:site =>'http://api.t.sina.com.cn'})
				accesstoken = OAuth::AccessToken.new(consumer, access_token, access_token_secret)
				response = accesstoken.get("http://api.t.sina.com.cn/account/verify_credentials.json")
				@weibo_user = JSON.parse(response.body)
			end
		end
	end
end

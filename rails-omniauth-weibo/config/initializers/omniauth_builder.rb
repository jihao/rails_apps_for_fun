require 'omniauth'
require 'omniauth-weibo'

RailsOmniauthWeibo::Application.config.middleware.use OmniAuth::Builder do
  provider :weibo, ENV['App_Key'], ENV['App_Secret'] 
end

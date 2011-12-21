require 'omniauth'
require 'omniauth-github'

RailsOmniauthGithub::Application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['client_id'],ENV['secret'] 
end

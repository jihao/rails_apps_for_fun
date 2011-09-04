class User < ActiveRecord::Base
  has_many :authorizations do 
	def find_or_create_by_params(params)
		provider,uid = params[:provider],params[:uid]
		access_token,access_token_secret = params[:access_token],params[:access_token_secret]

		authorization = find_or_create_by_provider_and_uid(provider,uid)
		authorization.update_attributes(params.except(:provider,:uid))
	end
  end
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end

class SocialUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

  def self.find_for_oauth(auth)
    user = SocialUser.where(uid: auth.uid, provider: auth.provider).first
      
    unless user
      user = SocialUser.create(
        uid:      auth.uid,
        provider: auth.provider,
        email:    SocialUser.dummy_email(auth),
        password: Devise.friendly_token[0, 20]
       )
    end
      
    user
  end
      
  private
      
  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end

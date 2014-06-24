class User < ActiveRecord::Base
  validates :name, presence: true
  before_create :create_remember_token

 has_secure_password
 validates :password, presence: true
  has_many :assignments
  belongs_to :welcome


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = User.digest(User.new_remember_token)
  end
end

class User < ActiveRecord::Base
  validates :name, presence: true

 attr_accessor :name, :password, :password_confirmation
 has_secure_password
 validates :password, presence: true



  has_many :assignments
  belongs_to :welcome
end

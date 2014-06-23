class User < ActiveRecord::Base
  has_many :assignments
  belongs_to :welcome
end

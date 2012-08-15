class User < ActiveRecord::Base
  has_many :chars
  has_many :groups

end

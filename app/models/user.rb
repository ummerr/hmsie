class User < ActiveRecord::Base
  has_many :goals
  has_many :expenditures

  has_secure_password
end

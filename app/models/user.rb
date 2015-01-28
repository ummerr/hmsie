class User < ActiveRecord::Base
  has_many :goals
  has_many :expenditures

  validates :name, presence: true

  def age
  now = Time.now.utc.to_date
  now.year - self.birthday.year - (self.birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  has_secure_password
end

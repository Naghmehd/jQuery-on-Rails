class User < ActiveRecord::Base
  has_many :links

  validates :full_name, presence: true
  validates :username, presence: true
end

class User < ActiveRecord::Base
  has_many :links

  validate :name, presence: true
  validate :username, presence: true
end

class Link < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes

  validates :title, presence: true
end

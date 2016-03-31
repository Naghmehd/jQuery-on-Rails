class Link < ActiveRecord::Base
  belong_to :user
  has_many  :upvotes
  has_many  :downvotes

  validates :title, presence: true
end

class Link < ActiveRecord::Base
  belong_to :user
  has_many :upvotes
  
  validates :title, presence: true
end

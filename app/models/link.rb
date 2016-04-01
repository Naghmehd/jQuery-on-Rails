class Link < ActiveRecord::Base
  belongs_to :user
  has_many :upvotes
  has_many :downvotes

  validates :title, presence: true

  def scores
    upvotes.count 
  end

  def vote
    upvotes.count + 1
  end

  def bad_vote
    downvotes.count - 1
  end

end

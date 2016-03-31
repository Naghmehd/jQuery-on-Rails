class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.interger :upvote
      t.interger :downvote

      t.timestamps null: false
    end
  end
end

class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.references :user, index: true, foreign_key: true
      
      t.string :title, null: false
      t.string :body

      t.timestamps null: false
    end
  end
end

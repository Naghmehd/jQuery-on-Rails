class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.false, :null
      t.string :body
      t.false, :null

      t.timestamps null: false
    end
  end
end

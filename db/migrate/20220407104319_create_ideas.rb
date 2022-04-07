class CreateIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :ideas do |t|
      t.integer :category_id, null: false
      t.integer :member_id, null: false
      t.string :idea_detail, null: false
      t.text :image
      t.timestamps
    end
  end
end

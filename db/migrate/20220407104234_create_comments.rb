class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.integer :idea_id
      t.string :comment_detail
      t.boolean :is_deleted, null: false, default: false
      t.datetime :deleted_at
      t.integer :member_id, null: false
    t.timestamps
    end
  end
end

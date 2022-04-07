class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_detail
      # ↓この記述欲しいかわからない
      t.boolean :is_deleted, null: false, default: false
      t.datetime :deleted_at, null: false
      t.integer :customer_id, null: false
    t.timestamps
    end
  end
end

class CreateGoods < ActiveRecord::Migration[6.1]
  def change
    create_table :goods do |t|
      t.string :member_id, null: false
      t.string :idea_id, null: false
      t.timestamps
    end
  end
end

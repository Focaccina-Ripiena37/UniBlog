class CreateReactions < ActiveRecord::Migration[8.1]
  def change
    create_table :reactions do |t|
      t.references :post, null: false, foreign_key: true
      t.string :kind, null: false
      t.timestamps
    end

    add_index :reactions, [:post_id, :kind]
  end
end

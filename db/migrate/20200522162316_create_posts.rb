class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.integer :author_id
      t.text :text
      t.timestamp :created_at

      t.timestamps
    end
    add_index :posts, :author_id
  end
end

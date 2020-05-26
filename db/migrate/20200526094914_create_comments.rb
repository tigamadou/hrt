class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.integer :author_id
      t.integer :post_id
      t.text :text

    end
    add_index :comments, :post_id   
  end
end

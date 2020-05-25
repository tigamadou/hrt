class ChangeForeignKeyForPost < ActiveRecord::Migration[6.0]
  def change
  	      rename_column :posts, :user_id, :owner_id

  end
end

class CreateTwitterposts < ActiveRecord::Migration
  def change
    create_table :twitterposts do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :twitterposts, :users
    add_index :twitterposts, [:user_id, :created_at]
  end
end

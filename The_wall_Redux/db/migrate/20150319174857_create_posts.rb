class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :message
      t.references :post, index: true
      t.references :user, index: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

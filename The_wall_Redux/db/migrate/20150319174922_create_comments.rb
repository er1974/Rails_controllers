class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.references :post, index: true
      t.references :user, index: true
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end

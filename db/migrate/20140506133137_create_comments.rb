class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :post, index: true

      t.timestamps
    end
  end
end

class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.text :message
      t.belongs_to :blog

      t.timestamps
    end
    add_index :comments, :blog_id
  end
end

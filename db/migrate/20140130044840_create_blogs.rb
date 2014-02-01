class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :author
      t.text :body
      t.datetime :published_at
      t.boolean :featured

      t.timestamps
    end
  end
end

class CreateProjectPictures < ActiveRecord::Migration
  def change
    create_table :project_pictures do |t|
      t.references :picable
      t.string :name

      t.timestamps
    end
    add_index :project_pictures, :picable_id
  end
end

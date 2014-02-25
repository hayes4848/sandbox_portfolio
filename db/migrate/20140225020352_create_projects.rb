class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.attachment :project_picture

      t.timestamps
    end
  end
end

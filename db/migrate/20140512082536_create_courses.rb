class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.references :user, index: true

      t.timestamps
    end
  end
end

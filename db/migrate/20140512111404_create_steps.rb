class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :name
      t.text :description
      t.text :support
      t.string :video
      t.references :topic, index: true
      t.references :course, index: true

      t.timestamps
    end
  end
end

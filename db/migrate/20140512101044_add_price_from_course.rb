class AddPriceFromCourse < ActiveRecord::Migration
  def change
    add_column :courses, :price, :integer
  end
end

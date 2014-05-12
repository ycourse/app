class RemovePriceFromCourse < ActiveRecord::Migration
  def change
    remove_column :courses, :price, :decimal
  end
end

class AddStepFromTopic < ActiveRecord::Migration
  def change
    add_reference :topics, :step, index: true
  end
end

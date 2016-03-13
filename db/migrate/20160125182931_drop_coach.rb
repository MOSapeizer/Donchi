class DropCoach < ActiveRecord::Migration
  def change
  	drop_table :coaches
  	drop_table :students
  end
end

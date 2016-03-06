class RemoveDuplicateColumn < ActiveRecord::Migration
  def change
  	remove_column :courses , :course_id
  	remove_column :lessons , :lesson_id
  end
end

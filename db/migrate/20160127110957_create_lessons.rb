class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
    	t.integer :course_id
    	t.integer :lesson_id
    	t.string :information
    	t.string :picture
		t.timestamps null: false
    end
  end
end

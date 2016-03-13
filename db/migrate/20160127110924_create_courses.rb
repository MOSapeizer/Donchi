class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
    	t.string :main_picture_source
    	t.string :title
    	t.string :name
    	t.integer :course_id
    	t.integer :coach_id
    	t.integer :numoflesson
    	t.integer :numofstudent
		t.timestamps null: false
    end
  end
end

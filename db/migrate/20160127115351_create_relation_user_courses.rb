class CreateRelationUserCourses < ActiveRecord::Migration
  def change
    create_table :relation_user_courses do |t|
    	t.integer :user_id
    	t.integer :course_id
      	t.timestamps null: false
    end
  end
end
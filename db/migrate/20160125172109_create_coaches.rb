class CreateCoaches < ActiveRecord::Migration
  def change
  	drop_table :coaches
    create_table :coaches do |t|
	    t.integer :popularity 	
	    t.timestamps null: false
    end
  end
end

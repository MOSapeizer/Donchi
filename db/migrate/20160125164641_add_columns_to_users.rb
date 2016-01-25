class AddColumnsToUsers < ActiveRecord::Migration
  def change
  	 add_column :users, :name,:string 
  	 add_column :users,	:uid,:integer 	
  	 add_column :users,	:information,:string
  	 add_column :users,	:numofcourse,:integer	
  end
end

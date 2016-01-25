class AddChildColumnToUser < ActiveRecord::Migration
  def change
  	 #only for coach
  	 add_column :users,	:popularity,:integer

  	 #only for student
  	 add_column :users,	:bodyfitness,:string	
  	 add_column :users,	:calendar,:string
  	
  end
end

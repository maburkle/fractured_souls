class AddToSkills < ActiveRecord::Migration
  def change
  	add_column :skills, :classification, :string
  end
end

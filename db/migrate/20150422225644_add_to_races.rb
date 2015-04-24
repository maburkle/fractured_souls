class AddToRaces < ActiveRecord::Migration
  def change
  	add_column :races, :hit_points, :integer
  end
end

class AddWeightLoadToRaces < ActiveRecord::Migration
  def change
  	add_column :races, :carry_weight, :integer
  end
end

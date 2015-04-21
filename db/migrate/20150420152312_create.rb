class Create < ActiveRecord::Migration
  def change
  	create_table :weapons do |t|
    	t.string :name
    	t.string :type
    	t.integer :range
    	t.integer :power
    	t.integer :power_modifier
    	t.integer :soul_rune_slots
    	t.decimal :weight
    	t.decimal :cost
    	t.timestamps
    end
  end
end

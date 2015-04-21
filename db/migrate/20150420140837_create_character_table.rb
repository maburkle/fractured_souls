class CreateCharacterTable < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	t.string :first_name
    	t.string :last_name
    	t.boolean :gender
    	t.integer :age
    	t.integer :speed
    	t.integer :maximum_carry_weight
    	t.integer :current_carry_weight
    	t.integer :burden_weight
    	t.integer :maximum_hit_points
    	t.integer :current_hit_points
    	t.integer :soul_points
    	t.text :appearence
    	t.text :background
    	t.integer :morality
    	t.integer :humanity
    	t.decimal :money
    	t.integer :user_id
    	t.integer :race_id
    	t.timestamps
    end
  end
end

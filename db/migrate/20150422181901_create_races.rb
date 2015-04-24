class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
    	t.string :name
    	t.text :description
    	t.integer :speed
    	t.integer :focus
    	t.timestamps
    end
    create_table :racial_skills do |t|
    	t.integer :skill_id
    	t.integer :race_id
    	t.boolean :bonus?
    	t.integer :amount
    	t.timestamps
    end
  end
end

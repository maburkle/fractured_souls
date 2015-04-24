class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
    	t.string :name
    	t.integer :castable_id
    	t.string :castable_type
    	t.text :flavor_text
    	t.integer :range
    	t.string :target
    	t.integer :focus_cost
    	t.string :action
    	t.string :damage
    	t.string :effect
    	t.string :critical_effect
    	t.string :great_effect
    	t.string :good_effect
    	t.text :special
    	t.text :prereq
    end
  end
end

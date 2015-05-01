class CreateSpellCharacterRelationship < ActiveRecord::Migration
  def change
    create_table :characters_spells do |t|
    	t.integer :character_id
    	t.integer :spell_id
    	t.timestamps
    end
    create_table :character_skill_points do |t|
    	t.integer :character_id
    	t.integer :skill_id
    	t.integer :points
    	t.timestamps
    end

    add_column :characters, :maximum_focus, :integer
    add_column :characters, :current_focus, :integer
    add_column :characters, :nickname, :string
  end
end

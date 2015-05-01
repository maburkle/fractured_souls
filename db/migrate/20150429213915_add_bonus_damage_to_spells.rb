class AddBonusDamageToSpells < ActiveRecord::Migration
  def change
  	add_column :spells, :skill_damage_multipler, :integer
  end
end

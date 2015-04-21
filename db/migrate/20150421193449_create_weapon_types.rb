class CreateWeaponTypes < ActiveRecord::Migration
  def change
    create_table :weapon_types do |t|
    	t.string :name
    end

    remove_column :weapons, :type, :string
    add_column :weapons, :weapon_type_id, :integer
  end
end

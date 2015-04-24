class CreateWeaponTypes < ActiveRecord::Migration
  def change
    create_table :weapon_classifications do |t|
    	t.string :name
    end

    remove_column :weapons, :type, :string
    add_column :weapons, :weapon_classification_id, :integer
  end
end

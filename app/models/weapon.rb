class Weapon < ActiveRecord::Base

	belongs_to :weapon_classification
	has_many :spells, as: :castable

	def build_spell
		self.spells.new
	end

	def classification_name
		self.weapon_classification.display_name
	end
end

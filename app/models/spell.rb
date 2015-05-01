class Spell < ActiveRecord::Base
	belongs_to :castable, :polymorphic => true
	has_many :characters_spells
	has_many :characters, through: :characters_spells

	def castable_name
		self.castable.name
	end

	def free?
		return "free" if self.focus_cost == 0 || self.focus_cost.blank?
	end
end

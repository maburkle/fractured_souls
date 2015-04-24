class Skill < ActiveRecord::Base
	has_many :racial_skills
	has_many :races, through: :racial_skills
	has_many :spells, as: :castable

	def build_spell
		self.spells.new
	end
end

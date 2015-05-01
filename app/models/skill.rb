class Skill < ActiveRecord::Base
	has_many :racial_skills
	has_many :races, through: :racial_skills
	has_many :spells, as: :castable
	belongs_to :spell
	has_many :character_skill_points
	has_many :characters, through: :character_skill_points

	def build_spell(opts = {})
		self.spells.new(opts)
	end
end

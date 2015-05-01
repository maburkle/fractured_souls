class Race < ActiveRecord::Base
	has_many :racial_skills
	has_many :skills, through: :racial_skills
	has_many :spells, as: :castable

	accepts_nested_attributes_for :racial_skills

	def build_spell(opts = {})
		self.spells.new(opts)
	end
end
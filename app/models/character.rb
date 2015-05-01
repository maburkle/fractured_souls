class Character < ActiveRecord::Base
	has_many :characters_spells
	has_many :spells, through: :characters_spells
	has_many :character_skill_points
	has_many :skills, through: :character_skill_points
end

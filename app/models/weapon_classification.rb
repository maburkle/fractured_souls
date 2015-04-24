class WeaponClassification < ActiveRecord::Base

	has_many :weapon

	def display_name
		self.name.split.map(&:capitalize).join(' ')
	end
end

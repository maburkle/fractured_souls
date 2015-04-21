class WeaponType < ActiveRecord::Base

	belongs_to :weapon

	def display_name
		self.name.split.map(&:capitalize).join(' ')
	end
end

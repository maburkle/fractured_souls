class StaticPagesController < ApplicationController
	layout "homepage"
	def home
		@classifications = WeaponClassification.all
	end
end
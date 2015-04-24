class WeaponsController < ApplicationController

	def index
		@groups = Weapon.all.group_by(&:classification_name)
	end

	def show
	end

	def create
		@weapon = Weapon.new(weapon_params)

    if @weapon.save
      redirect_to weapons_path
      flash.notice = "#{@weapon.name} was sucessfully created."
    else
    	flash.alert = "Weapon could not be created."
    end
	end

	def new
		@weapon = Weapon.new
		@types = WeaponClassification.all
	end

	def update
	end

	def edit
	end

	private
	def weapon_params
    params.require(:weapon).permit(:weapon_classification_id, :name, :range, :power, :power_modifier, :soul_rune_slots, :weight, :cost)
  end
end

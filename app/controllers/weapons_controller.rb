class WeaponsController < ApplicationController

	def index
		@weapons = Weapon.all.group(:type)
	end

	def show
	end

	def create
		@weapon = Weapon.new(weapon_params)

    if @weapon.save
      redirect_to weapon_path
      flash.notice = "#{@weapon.name} was sucessfully created."
    else
    	flash.alert = "Weapon could not be created."
    end
	end

	def new
		@weapon = Weapon.new
		@types = WeaponType.all
	end

	def update
	end

	def edit
	end

	private
	def weapon_params
    params.require(:weapon).permit(:name, :type, :range, :power, :power_modifier, :soul_rune_slots, :weight, :cost)
  end
end

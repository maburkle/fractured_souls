class CharactersController < ApplicationController
	before_filter :get_character, only: [:show, :edit, :update]

	def index
		@characters = current_user.characters
	end

	def show
		@spells = @character.spells
	end

	def create
		@character = Character.new(race_params)
		@character.user = current_user
    if @character.save
      redirect_to characters_path
      flash.notice = "#{@character.name} was sucessfully created."
    else
    	flash.alert = "Character could not be created."
    end
	end

	def new
		@character = Character.new
		@skills = Skill.all
		@races = Race.all
	end

	def update
	end

	def edit
	end

	private

	def character_params
    params.require(:character).permit(:first_name, :last_name, :gender, :nickname, :speed, :age,
    																	:current_focus, :maximum_focus, :soul_points, :current_hit_points,
    																	:maximum_hit_points, :maximum_carry_weight, :current_carry_weight,
    																	:burden_weight, :appearence, :background, :morality, :humanity,
    																	:money, :user_id, :race_id,
    																	character_skill_points_attributes: [:skill_id, :character_id, :points])
  end

  def get_character
  	@character = Character.find(params[:id])
  end

end

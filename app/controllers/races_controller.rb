class RacesController < ApplicationController
	before_filter :get_race, only: [:show, :edit, :update]

	def index
		@races = Race.all
	end

	def show
		@spells = @race.spells

		respond_to do |f|
			f.html
    	f.json { render :json => @race }
  	end
	end

	def create
		@race = Race.new(race_params)
    if @race.save
      redirect_to races_path
      flash.notice = "#{@race.name} was sucessfully created."
    else
    	flash.alert = "Race could not be created."
    end
	end

	def new
		@race = Race.new
		@skills = Skill.all
		@racial_skills = 6.times { @race.racial_skills.build }
	end

	def update
		if @race.update(race_params)
			redirect_to race_path(@race)
		end
	end

	def edit
		@skills = Skill.all
	end

	private

	def race_params
    params.require(:race).permit(:speed, :carry_weight, :focus, :hit_points, :name, :description, racial_skills_attributes: [:skill_id, :amount, :bonus?])
  end

  def get_race
  	@race = Race.find(params[:id])
  end

end
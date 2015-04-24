class RacesController < ApplicationController

	def index
		@races = Race.all
	end

	def show
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
	end

	def edit
	end

	private
	def race_params
    params.require(:race).permit(:speed, :focus, :hit_points, :name, :description, racial_skills_attributes: [:skill_id, :amount, :bonus?])
  end
end
class SkillsController < ApplicationController

	def index
		@groups = Skill.all.group_by(&:classification)
	end

	def show
		@skill = Skill.find(params[:id])
		@spells = @skill.spells
	end

	def create
		@skill = Skill.new(skill_params)

    if @skill.save
      redirect_to skills_path
      flash.notice = "#{@skill.name} was sucessfully created."
    else
    	flash.alert = "Skill could not be created."
    end
	end

	def new
		@skill = Skill.new
		@types = ["Combat", "Crafting", "Non-Combat"]
	end

	def update
	end

	def edit
	end

	private
	def skill_params
    params.require(:skill).permit(:classification, :name, :description, :racial_skills_attributes)
  end
end
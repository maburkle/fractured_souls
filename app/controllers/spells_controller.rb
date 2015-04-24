class SpellsController < ApplicationController
	before_filter :get_parent, only: [:show, :new, :create, :edit, :update]

	def index
		@groups = Spell.all.group_by(&:castable_type)
	end

	def show
	end

	def create
		@spell = @parent.build_spell(spell_params)

    if @spell.save
      redirect_to spells_path
      flash.notice = "#{@spell.name} was sucessfully created."
    else
    	flash.alert = "Spell could not be created."
    end
	end

	def new
		@spell = @parent.build_spell
		@types = ['Free', 'Minor', 'Move', 'Standard', 'Reaction']
	end

	def update
	end

	def edit
	end

	private
	def spell_params
    params.require(:spell).permit(:name, :castable_id, :castable_id, :flavor_text, :range, :target,
    :focus_cost, :action, :damage, :effect, :critical_effect, :great_effect, :good_effect, :special, :prereq )
  end
  def get_parent
    @parent = Skill.find(params[:skill_id]) if params[:skill_id].present?
    @parent = Weapon.find(params[:weapon_id]) if params[:weapon_id].present?
    @parent = Race.find(params[:race_id]) if params[:race_id].present?
  end
end
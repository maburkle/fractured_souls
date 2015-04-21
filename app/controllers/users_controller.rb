class UsersController < ApplicationController
	before_filter :get_user, only: [:show, :edit]

	def index
	end

	def show
	end

	def create
	end

	def new
		@user = User.new
	end

	def update
	end

	def edit
	end

	private

	def get_user
		@user = User.find(params[:user_id])
	end

	def user_params
    params.require(:user).permit(:email, :username, :first_name, :last_name)
  end
end
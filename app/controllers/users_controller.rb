class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
		@user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in @user
			flash[:success] = "Welcome to the Test Randomizer!"
  		redirect_to @user
    else
      render 'new'
    end  	
  end

	private

    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :address, :city, :state, :zip, :phone, :password, :password_confirmation)
    end
end

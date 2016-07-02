class UserSignupsController < ApplicationController
  def new
    @user_signup = UserSignup.new
  end

  def create
    @user_signup = UserSignup.new(new_user_params)

    if @user_signup.save
      redirect_to root_url, notice: "Thank you, You will be the first to know when we launch."
    else
      render action: 'new', alert: "Signup failed."
    end
  end

  private
    def new_user_params
      params.require(:user_signup).permit(:email)
    end
end

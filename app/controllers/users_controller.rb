class UsersController < ApplicationController
  def new
      @user = User.new
  end

  def create
      @user = User.new(params[:user])
      if @user.save
        redirect_to root_url, notice: "Thank you for signing up!"
      else
        render "new"
      end
  end
  
  def edit
    @user = current_user
  end

  def update_password
    @user = User.find(current_user.id)
    if @user.update_attributes(params[:user])
      # Sign in the user by passing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to dashboard_path
    else
      render "edit"
    end
  end
end

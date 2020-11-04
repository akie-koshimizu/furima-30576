class UsersController < ApplicationController

  def create
    @user = user.new(user_params)
    if @user.valid?
      @user.save
      redirect_to root_path
    else
      render 'new'
    end
  end
end

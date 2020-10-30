class ItemsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
  end

  def new
  end

  def destroy
    redirect_to root_path
  end

  private
  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

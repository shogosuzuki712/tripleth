class DietMenusController < ApplicationController
  def index
  end

  def new
    @diet_menu = Diet_menu.new
  end

  def create
    @diet_menu = Diet_menu.new(dien_menu_params)
    if @diet_menu.save
      redirect_to diet_menus_path
    else
      render :new
    end
  end

  def show
  end

  def delete
  end

  def dien_menu_params
    params.require(:diet_menu).permit(:genre_id, :title, :content).merge(user_id: current_user.id)
  end
end

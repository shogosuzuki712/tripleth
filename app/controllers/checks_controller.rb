class ChecksController < ApplicationController
  def new
    @checks = Check.all
    @check = Check.new
  end

  def create
    @check = Check.new(check_params)
    @checks = Check.all
    # 保存ができない
    if @check.save
      redirect_to new_check_path
    else
      # /checksのURLに遷移してしまう
      @check.image = nil
      render new_check_path
    end
  end

  def show
  end

  def delete
  end

  private

  def check_params
    params.require(:check).permit(:weight, :image, :start_time).merge(user_id: current_user.id)
  end
end

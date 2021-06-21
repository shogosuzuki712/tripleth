class ChecksController < ApplicationController
  def new
    @checks = Check.all
    @check = Check.new

    # @graph = Check.where(user_id: current_user.id).limit(3).order(weight: "ASC"))
    # @graph = Check.all
    
    # グラフの基準線作成用の配列
    @data = [['2019-06-01', 100], ['2019-06-02', 200], ['2019-06-03', 150]]
    # @graph.each do |rec|
    #   @donation_days << rec.weight
    # end
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

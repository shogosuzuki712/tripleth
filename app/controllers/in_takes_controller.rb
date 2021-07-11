class InTakesController < ApplicationController
  def new
    @in_take = InTake.new
    @in_takes = InTake.all
  end

  def create
    if params[:food_category_id] && params[:food_id] && params[:food_category_id].length == params[:food_id].length
      c = 0
      params[:food_category_id].length.times do |c| #データ登録分繰り返す
        @in_take = InTake.new(in_take_params)  #start_timeとuser_idのみ入ったインスタンス生成
        @in_take.food_category_id = params[:food_category_id][c]  #配列c番目のfood_category_idを付与
        @in_take.food_id = params[:food_id][c]  #配列c番目のfood_idを付与
        @in_take.save  #c番目のデータ登録
        c += 1  #cに1追加する
      end
      @in_takes = InTake.all
      redirect_to new_in_take_path
    else
      @in_takes = InTake.all
      @in_take = InTake.new(in_take_params)
      @in_take.valid?
      render "new"
    end
  end

  def show
  end

  def delete
  end


  private 
  def in_take_params
    params.require(:in_take).permit(:start_time).merge(user_id: params[:format])
  end
  
end

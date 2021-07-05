class TweetsController < ApplicationController
  def index
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  def show
  end

  def delete
  end

  private
  def tweet_params
    params.require(:tweet).permit(:title, :content).merge(user_id: current_user.id)
  end
end

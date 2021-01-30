class TracksController < ApplicationController
  before_action :move_to_root_path, except: [:index, :show]

  def new
    @tweet = Tweet.find(params[:tweet_id])
    @track = Track.new
  end

  def create
    @tweet = Tweet.find(params[:tweet_id])
    @track = Track.new(track_params)
    if @track.save
      render :create
    else
      render :new
    end
  end

  def edit
    @tweet = Tweet.find(params[:tweet_id])
    @track = Track.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:tweet_id])
    track = Track.find(params[:id])
    track.update(track_params)
  end

  private

  def track_params
    params.require(:track).permit(:track_name1, :track_file1, :track_name2, :track_file2, :track_name3, :track_file3, :track_name4, :track_file4, :track_name5, :track_file5, :track_name6, :track_file6, :track_name7, :track_file7, :track_name8, :track_file8, :track_name9, :track_file9, :track_name10, :track_file10, :track_name11, :track_file11, :track_name12, :track_file12, :track_name13, :track_file13, :track_name14, :track_file14, :track_name15, :track_file15, :track_name16, :track_file16, :track_name17, :track_file17, :track_name18, :track_file18, :track_name19, :track_file19, :track_name20, :track_file20).merge(
      user_id: current_user.id, tweet_id: params[:tweet_id])
  end

  def move_to_root_path
    redirect_to root_path unless user_signed_in?
  end

end

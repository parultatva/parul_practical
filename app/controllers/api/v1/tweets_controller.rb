class Api::V1::TweetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]

  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  # GET /tweets/1
  # GET /tweets/1.json
    def show
    render json: @tweets
  end

  # GET /tweets/new
  def new
    @tweet = Tweet.new
  end

  # GET /tweets/1/edit
  def edit
  end

  # POST /tweets
  # POST /tweets.json
  def create
    @tweet = Tweet.new(tweet_params)

    respond_to do |format|
      if @tweet.save

        render json: @tweet, status: :created, location: api_v1_tweets_url(@article)
      else
        render json: @tweet.errors, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /tweets/1
  # PATCH/PUT /tweets/1.json
  def update
    respond_to do |format|
      if @tweet.update(tweet_params)
        render json: @tweet
      else
        render json: @tweet.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /tweets/1
  # DELETE /tweets/1.json
  def destroy
    @tweet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet
      @tweet = Tweet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_params
      params.require(:tweet).permit(:user_id, :description)
    end
end
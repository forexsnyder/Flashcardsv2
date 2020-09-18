class TopicssController < ApplicationController
  before_action :authorize_request, only: [:create, :update, :destroy]
  before_action :set_food, only: [:update, :destroy]

  # GET /topics
  def index
    @topics = Topic.all

    render json: @topics
  end

  # GET /topics/1
  def show
    @topic = Topic.find(params[:id])

    render json: @topic, include: :flashcards
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)
    @topic.user = @current_user

    if @topic.save
      render json: @topic, status: :created
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /topics/1
  def update
    if @topic.update(topic_params)
      render json: @food
    else
      render json: @topic.errors, status: :unprocessable_entity
    end
  end

  # DELETE /topics/1
  def destroy
    @topic.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topic
      @topic = @current_user.topics.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def topic_params
      params.require(:topic).permit(:name)
    end
end
class CountsController < ApplicationController
  before_action :set_count, only: [:show, :update, :destroy]

  def index 
    count = Count.find(1)
    Count.increment_counter(:view, 1)
render json: count.to_json(except: [:created_at, :updated_at, :id])
end
end

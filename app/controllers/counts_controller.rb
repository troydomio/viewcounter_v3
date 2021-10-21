class CountsController < ApplicationController
  before_action :set_count, only: [:show, :update, :destroy]

  # GET /counts
 
  #   @counts = Count.all

  #   render json: @counts
  # end
  def index 
    count = Count.find(1)
    Count.increment_counter(:view, 1)
render json: count.to_json(except: [:created_at, :updated_at, :id])
end

  # GET /counts/1
#  
  # def show
  #   render json: @count
  # end

  # POST /counts
  # def create
  #   @count = Count.new(count_params)

  #   if @count.save
  #     render json: @count, status: :created, location: @count
  #   else
  #     render json: @count.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /counts/1
  # def update
  #   if @count.update(count_params)
  #     render json: @count
  #   else
  #     render json: @count.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /counts/1
  # def destroy
  #   @count.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_count
      @count = Count.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def count_params
      params.require(:count).permit(:view)
    end
end

class ResultsController < ApplicationController
  before_action :set_result, only: [:show, :edit, :update, :destroy]

  def index
    @results = Result.all
  end

  def show
  end

  def new
    @result = Result.new
    @users = User.all.map { |i| [i.name, i.id]}    
    @events = Event.all.map { |i| [i.name, i.id]}    
  end

  def edit
  end

  def create
    @result = Result.new(result_params)
    @result.event_id = params[:event_id]
    @result.user_id = params[:user_id]

      if @result.save
        redirect_to @result, notice: 'Result was successfully created.' 
      else
        render :new 
      end
  end

  def update
    respond_to do |format|
      if @result.update(result_params)
        format.html { redirect_to @result, notice: 'Result was successfully updated.' }
        format.json { render :show, status: :ok, location: @result }
      else
        format.html { render :edit }
        format.json { render json: @result.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @result.destroy
    respond_to do |format|
      format.html { redirect_to results_url, notice: 'Result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_result
      @result = Result.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def result_params
      params.require(:result).permit(:score, :win_loose_tie, :event_id, :user_id)
    end
end

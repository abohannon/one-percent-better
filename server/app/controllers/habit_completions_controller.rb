class HabitCompletionsController < ApplicationController
  before_action :set_habit_completion, only: %i[ show update destroy ]

  # GET /habit_completions
  def index
    @habit_completions = HabitCompletion.all

    render json: @habit_completions
  end

  # GET /habit_completions/1
  def show
    render json: @habit_completion
  end

  # POST /habit_completions
  def create
    @habit_completion = HabitCompletion.new(habit_completion_params)

    if @habit_completion.save
      render json: @habit_completion, status: :created, location: @habit_completion
    else
      render json: @habit_completion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /habit_completions/1
  def update
    if @habit_completion.update(habit_completion_params)
      render json: @habit_completion
    else
      render json: @habit_completion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /habit_completions/1
  def destroy
    @habit_completion.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_habit_completion
      @habit_completion = HabitCompletion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def habit_completion_params
      params.require(:habit_completion).permit(:habit_id, :completed_on, :status)
    end
end

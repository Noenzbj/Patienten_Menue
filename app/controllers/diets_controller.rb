class DietsController < ApplicationController
  before_action :set_diet, only: [:show, :edit, :update, :destroy]

  def show

  end

  def new
    if params[:patient_id]
      @patient_id = Patient.find(params[:patient_id])
    end
    @diet = Diet.new()
    
  end

  def edit
    if params[:patient_id]
      @patient_id = Patient.find(params[:patient_id])
    end
  end

  def update
    if @diet.update(diet_params)
      flash[:notice] = "Erfolgreich aktualisiert!"
      redirect_to @diet
    else
      render "edit"
    end
  end

  def create
    @diet = Diet.new(diet_params)
    if @diet.save
      flash[:notice] = "Ernährungsform eingetragen!"
      redirect_to patient_path(@diet.patient_id)
    else
      render "new"
    end
  end

  private

  def set_diet
    @diet = Diet.find(params[:id])
  end

  def diet_params
    params.require(:diet).permit(:dysphagia, :reduction_diet, :light_food, :low_cholesterol, :pureed_meat, :bile_liver, :no_pork, :low_purine, :cut_meat, :diabetes, :vegetarian, :pureed_food, :no_fish, :nail_board, :big_cup, :patient_id)
  end

end

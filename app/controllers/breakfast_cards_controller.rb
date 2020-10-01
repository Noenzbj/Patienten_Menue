class BreakfastCardsController < ApplicationController
  before_action :set_breakfast_card, only: [:show, :edit, :update, :destroy]

  # GET /breakfast_cards
  # GET /breakfast_cards.json
  def index
    @breakfast_cards = BreakfastCard.all
  end

  # GET /breakfast_cards/1
  # GET /breakfast_cards/1.json
  def show
  end

  # GET /breakfast_cards/new
  def new
    @breakfast_card = BreakfastCard.new
    if params[:patient_id]
      @patient_id = Patient.find(params[:patient_id])
    end
  end

  # GET /breakfast_cards/1/edit
  def edit
    if params[:patient_id]
      @patient_id = Patient.find(params[:patient_id])
    end
  end

  # POST /breakfast_cards
  # POST /breakfast_cards.json
  def create
    @breakfast_card = BreakfastCard.new(breakfast_card_params)
    if @breakfast_card.save
      flash[:notice] = "Vollkost Mittagskarte wurde erfolgreich angelegt"
      redirect_to patient_path(@breakfast_card.patient_id)
    else
      redirect_to 'new' #new_breakfast_card_path(:patient_id => @patient_id.id)
    end
  end

  # PATCH/PUT /breakfast_cards/1
  # PATCH/PUT /breakfast_cards/1.json
  def update
    if @breakfast_card.update(breakfast_card_params)
      flash[:notice] = "Erfolgreich aktualisiert!"
      redirect_to @breakfast_card
    else
      render "edit"
    end
  end

  # DELETE /breakfast_cards/1
  # DELETE /breakfast_cards/1.json
  def destroy
    if @breakfast_card.destroy
      flash[:notice] = "Vollkost Frühstückskarte gelöscht!"
      redirect_to patient_path(@breakfast_card.patient_id)
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_breakfast_card
      @breakfast_card = BreakfastCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def breakfast_card_params
      params.require(:breakfast_card).permit(:coffee, :tea, :milk, :cocoa, :hot, :cold, :butter,
            :becel, :cold_cuts, :cut_cheese, :cheese_spread, :jam, :honey, :egg, :porridge, :muesli,
            :quark, :nougat_creme, :bread_bun, :multigrain_bun, :greybread, :whitebread,
            :three_grain_bread, :crispbread, :patient_id, :comments)

    end
end

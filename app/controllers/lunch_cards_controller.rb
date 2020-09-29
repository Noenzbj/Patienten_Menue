class LunchCardsController < ApplicationController
  before_action :set_lunch_card, only: [:show, :edit, :update, :destroy]

  def index
    @lunch_cards = LunchCard.all
  end

  def show
    
  end

  def new
    @lunch_card = LunchCard.new
  end

  def edit
    
  end

  def create
    @lunch_card = LunchCard.new(lunch_card_params)
    if @lunch_card.save
      flash[:notice] = "Vollkost Mittagskarte wurde erfolgreich angelegt"
      redirect_to @lunch_card
    else
      render "new"
    end
  end

  def update
    if @lunch_card.update(lunch_card_params)
      flash[:notice] = "Erfolgreich aktualisiert!"
      redirect_to @lunch_card
    else
      render "edit"
    end
  end

  def destroy
    if @lunch_card.destroy
      flash[:notice] = "Vollkost Mittagskarte gelöscht"
      redirect_to lunch_cards_path
    end
  end

  private

  def set_lunch_card
    @lunch_card = LunchCard.find(params[:id])
  end

  def lunch_card_params
    params.require(:lunch_card).permit(:day_soup, :dessert, :pureed_meal, :pureed_meat, :cut_meat, :no_pork, :vegetarian, :no_fish, :comments, :portion)
  end

end

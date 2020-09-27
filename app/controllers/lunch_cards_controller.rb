class LunchCardsController < ApplicationController
  def index
    @lunch_cards = LunchCard.all
  end

  def show
    @lunch_card = LunchCard.find(params[:id])
  end
end

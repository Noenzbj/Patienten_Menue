class LunchCardsController < ApplicationController
  def index
    @lunch_cards = LunchCard.all
  end
end

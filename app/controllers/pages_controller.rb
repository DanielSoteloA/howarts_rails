class PagesController < ApplicationController
  def index
    @characters = Character.order(:house)
  end
end

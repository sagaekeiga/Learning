class PagesController < ApplicationController
  def index
    @texts = Text.all
  end
end

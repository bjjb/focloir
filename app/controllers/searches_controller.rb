class SearchesController < ApplicationController
  def show
    redirect_to Word.find_or_create_by_word(params[:q] || params[:id])
  end
end

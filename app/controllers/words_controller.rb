class WordsController < ApplicationController
  def index
    @word = Word.last(:order => :updated_at)
    render :show
  end

  def show
    @word = Word.find_or_create_by_word(params[:id])
  end

  def create
    redirect_to Word.find_or_create_by_word(params[:word])
  end
  
  def destroy
    @word = Word.find_by_word(params[:id])
    @word.destroy
    redirect_to @word
  end
end

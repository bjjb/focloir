class WordsController < ApplicationController
  def show
    @word = Word.find_or_create_by_word(params[:id])
  end
  
  def destroy
    @word = Word.find_by_word(params[:id])
    @word.destroy
    redirect_to @word
  end
end

class FlashcardsController < ApplicationController
  before_action :find_flashcard, except: %i[index new create]

  def index
    @flashcard = Flashcard.all
  end

  def new
    @flashcard = Flashcard.new
  end

  def create
    @flashcard = Flashcard.create(flashcard_params)
    if @flashcard.save
      redirect_to flashcards_url
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if @flashcard.update(flashcard_params)
      redirect_to @flashcard
    else
      render 'edit'
    end
  end

  def show
    @flashcard
  end

  def destroy
    @flashcard.destroy
    redirect_to flashcards_url
  end

  private

  def find_flashcard
    @flashcard = Flashcard.find(params[:id])
  end

  def flashcard_params
    params.require(:flashcard).permit(:original, :translation, :note)
  end
end

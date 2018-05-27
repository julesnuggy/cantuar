class PracticesController < ApplicationController
  before_action :gen_session
  before_action :find_practice, except: %i[index new create]
  before_action :find_flashcard, except: %i[index new create]

  def index
    call_random
  end

  def create
    call_random
    @practice = Practice.create(practice_params.merge(session_id: @session_id, flashcard_id: @flashcard.id))
    if @practice.save
      redirect_to @practice
    else
      render 'index'
    end
  end

  def show
  end

  private

  def gen_session
    @session_id = 1
  end

  def find_practice
    @practice = Practice.find(params[:id])
  end

  def random_flashcard
    @flashcard = Flashcard.order("RANDOM()").first
  end

  def call_random
    @flashcard ||= random_flashcard
  end

  def find_flashcard
    @flashcard = Flashcard.find(@practice.flashcard_id)
  end

  def practice_params
    params.permit(:session_id, :flashcard_id, :translation_input)
  end
end

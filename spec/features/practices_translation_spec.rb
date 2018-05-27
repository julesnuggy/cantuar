require 'rails_helper'

RSpec.describe PracticesHelper, type: :features do
  feature 'Translation' do
    scenario 'users are shown a random flashcard' do
      add_flashcard_name
      visit '/'
      click_on 'Practice Translation'
      expect(page).to have_content 'Practice Flashcard Original: Ngor giu Julian'
    end

    scenario 'users are able to enter a response' do
      add_flashcard_name
      visit '/'
      click_on 'Practice Translation'
      fill_in 'translation_input', with: 'I am called Julian'
      click_on 'Submit'
      expect(page).to have_content 'Practice Flashcard Original: Ngor giu Julian Your Translation: I am called Julian Stored Translation: My name is Julian'
    end
  end

end

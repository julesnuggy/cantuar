require 'rails_helper'

RSpec.describe FlashcardsHelper, type: :features do
  feature 'Managing flash cards -- ' do
    scenario 'users can add a flash card' do
      add_flashcard_hello
      expect(page).to have_content 'Original: Nei hou Translation: Hello'
    end

    feature 'text boxes cannot be blank --' do
      scenario 'original_text' do
        visit '/'
        click_button 'Manage Cards'
        click_button 'Add Card'
        fill_in 'original_text', with: ''
        fill_in 'translation_text', with: 'Hello'
        click_button 'Submit'
        expect(page).to have_content 'Create New Flashcard'
      end

      scenario 'translation_text' do
        visit '/'
        click_button 'Manage Cards'
        click_button 'Add Card'
        fill_in 'original_text', with: 'Nei hou'
        fill_in 'translation_text', with: ''
        click_button 'Submit'
        expect(page).to have_content 'Create New Flashcard'
      end
    end

    scenario 'users can see flash cards on the dashboard' do
      add_flashcard_hello
      add_flashcard_name
      expect(page).to have_content 'Original: Nei hou Translation: Hello Note: A greeting
                                    Original: Ngor giu Julian Translation: My name is Julian Note: Julian Ng'
    end

    scenario 'users can edit a flash card' do
      add_flashcard_hello
      click_button 'Edit This Flashcard'
      fill_in 'original_text', with: 'Ngor giu Julian'
      fill_in 'translation_text', with: 'My name is Julian'
      fill_in 'note_text', with: 'Julian Ng'
      click_button 'Submit'
      expect(page).to have_content 'Original: Ngor giu Julian Translation: My name is Julian Note: Julian Ng'
    end

    scenario 'users can delete a flash card' do
      add_flashcard_hello
      click_button 'Delete This Flashcard'
      expect(page).not_to have_content 'Original: Nei hou Translation: Hello Note: A greeting'
    end
  end
end

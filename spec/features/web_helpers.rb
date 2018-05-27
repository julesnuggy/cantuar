def add_flashcard_name
  visit '/'
  click_button 'Manage Cards'
  click_button 'Add Card'
  fill_in 'original_text', with: 'Ngor giu Julian'
  fill_in 'translation_text', with: 'My name is Julian'
  fill_in 'note_text', with: 'Julian Ng'
  click_button 'Submit'
end

def add_flashcard_hello
  visit '/'
  click_button 'Manage Cards'
  click_button 'Add Card'
  fill_in 'original_text', with: 'Nei hou'
  fill_in 'translation_text', with: 'Hello'
  fill_in 'note_text', with: 'A greeting'
  click_button 'Submit'
end

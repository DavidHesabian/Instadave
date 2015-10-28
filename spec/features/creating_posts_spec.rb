require 'rails_helper.rb'

feature 'Creating posts' do
  scenario 'can create a job' do
    visit '/'
    click_link 'New Post'
    attach_file('Image', "spec/a.jpg")
    fill_in 'Caption', with: 'nom nom nom #coffeetime'
    click_button 'Create Post'
    expect(page).to have_content('#coffeetime')
    expect(page).to have_css("img[src*='a.jpg']")
  end

it 'needs an image to create a post' do
  visit '/'
  click_link 'New Post'
  fill_in 'Caption', with: "No picture because SWAG"
  click_button 'Create Post'
  expect(page).to have_content('Stop, you need an image to post here!')

end
end
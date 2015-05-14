When(/^I enter player (\d+) name$/) do |arg1|
  fill_in('player1', with: 'Jimmy')
  fill_in('player2', with: 'Tim')
end

When(/^I press submit button$/) do
  click_button('submit')
end

When(/^I press "([^"]*)" button$/) do |arg1|
  click_button(arg1)
end

Then(/^I am redirected to the Board Setup page\.$/) do
  current_path.should == '/board_setup'
end

Then(/^I should see an "([^"]*)"$/) do |arg1|
  expect(page).to have_content (arg1)
end

Then(/^I should see an Empty Board$/) do
  expect(page).to have_content('1| |1')
end

When(/^I enter "([^"]*)"$/) do |coordinate|
  fill_in('coordinate', with: 'A1')
end

Then(/^I should see a ship$/) do
  expect(page).to have_content('1|B')
end

When(/^I follow the "([^"]*)"link$/) do |link_text|
click_link(link_text)
end


Then(/^I am redirected to the Start Game page$/) do
  current_path.should == '/start_game'
end

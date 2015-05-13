When(/^I enter player (\d+) name$/) do |_new_game|
  fill_in('player1', with: 'Jimmy')
  fill_in('player2', with: 'Tim')
end

When(/^I press submit button$/) do
  click_button('submit')
end

Then(/^I am redirected to the Board Setup page\.$/) do
  current_path.should == '/board_setup'
end

Then(/^I should see Jimmy Empty Board$/) do
  expect('/board_setup').to have_content('|1')
end

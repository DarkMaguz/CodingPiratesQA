Given(/^I can connect to the server$/) do
	puts "Testing connection to #{$address}"
	
	if not test_connection?
		puts "####################"
		puts "# CONNECTION ERROR #"
		puts "####################"
		puts "Connection to #{$address} failed!"
		$driver.quit()
	end
end

When(/^I go to the add new user page$/) do
  navigate_to($new_user_url)
  wait(1)
end

Then(/^I should see the a headline with the text "([^"]*)"$/) do |text|
  header_text = get_element_text(:xpath, $new_user_header_xpath)
  expect(text == header_text).to be true
end

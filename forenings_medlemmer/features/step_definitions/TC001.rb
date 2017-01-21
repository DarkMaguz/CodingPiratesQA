Given(/^I am on the signup page$/) do
	navigate_to($new_user_url)
	wait(1)
  expect(is_element_displayed(:xpath, $new_user_header_xpath)).to be true
end

When(/^I fillout the new user form$/) do
	select_option_from_dropdown(:id, :text, $new_user_gender, $new_user_gender_select_id)
	enter_text(:id, $new_user_child_name, $new_user_child_name_id)
  enter_text(:id, $new_user_child_birthday, $new_user_child_birthday_id)
  click(:id, $new_user_child_email_id)
  enter_text(:id, $new_user_child_email, $new_user_child_email_id)
  enter_text(:id, $new_user_child_phone, $new_user_child_phone_id)
  enter_text(:id, $new_user_parent_name, $new_user_parent_name_id)
  enter_text(:id, $new_user_parent_email, $new_user_parent_email_id)
  enter_text(:id, $new_user_parent_phone, $new_user_parent_phone_id)
  enter_text(:id, $new_user_address, $new_user_search_address_id)
  wait(1)
  click(:id, $new_user_address_search_result_id)
  wait(1)
end

And(/^I submit the form$/) do
  click(:xpath, "//input[@value='Opret']")
  wait(1)
end

Then(/^I should see a message telling me that an email has been sent$/) do
  expect(is_element_displayed(:xpath, "/html/body/div/div/div/div/h1")).to be true
  expect(get_element_text(:xpath, "/html/body/div/div/div/div/h1").to_s == "Email er på vej!").to be true
end

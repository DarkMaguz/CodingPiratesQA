Given(/^I am on the signup page$/) do
	navigate_to($new_user_url)
	wait(1)
  expect(is_element_displayed(:xpath, $new_user_header_xpath)).to be true
end

When(/^I fillout the form$/) do
	select_option_from_dropdown(:id, :text, "Dreng", $new_user_gender_select_id)
	enter_text(:id, "Oskar", $new_user_child_name_id)
  enter_text(:id, "01-04-2004", $new_user_child_birthday_id)
  click(:id,"id_child_email")
  enter_text(:id, "oskar7@sfkshkfs.com", "id_child_email")
  enter_text(:id, "12345678", "id_child_phone")
  enter_text(:id, "Ole", "id_parent_name")
  enter_text(:id, "ole7@sfkshkfs.com", "id_parent_email")
  enter_text(:id, "32165487", "id_parent_phone")
  enter_text(:id, "Øster Voldgade 4A, 1350 København K", "search-address")
  wait(1)
  click(:id,"ui-id-2")
  wait(1)
end

And(/^I submit the form$/) do
  click(:xpath, "//input[@value='Opret']")
  wait(1)
end

Then(/^I should see a message telleing me that an email has been sent$/) do
  expect(is_element_displayed(:xpath, "/html/body/div/div/div/div/h1")).to be true
  expect(get_element_text(:xpath, "/html/body/div/div/div/div/h1").to_s == "Email er på vej!").to be true
end

Given(/^I am on the signup page for volunteers$/) do
	navigate_to($new_volunteer_url)
	wait(1)
  expect(is_element_displayed(:xpath, $new_volunteer_header_xpath)).to be true
end

When(/^I fillout the volunteer form$/) do
	select_option_from_dropdown(:id, :text, $new_volunteer_gender, $new_volunteer_gender_select_id)
	enter_text(:id, $new_volunteer_name, $new_volunteer_name_id)
  enter_text(:id, $new_volunteer_birthday, $new_volunteer_birthday_id)
  click(:id, $new_volunteer_email_id)
  enter_text(:id, $new_volunteer_email, $new_volunteer_email_id)
  enter_text(:id, $new_volunteer_phone, $new_volunteer_phone_id)
  enter_text(:id, $new_volunteer_address, $new_volunteer_search_address_id)
  wait(1)
  click(:id, $new_volunteer_address_search_result_id)
  wait(1)
end

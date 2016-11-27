Given(/^I fillout the form$/) do
	navigate_to($new_user_url)
	wait(1)
	select_option_from_dropdown(:id, :text, "Dreng", $new_user_gender_select_id)
	enter_text(:id, "Oskar", $new_user_gender_child_name_id)
	wait(5)
end

When(/^I submit the form$/) do
end

Then(/^I should see something$/) do
end

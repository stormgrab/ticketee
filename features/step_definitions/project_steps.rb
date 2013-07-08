Given /^there is a project called "([^\"]*)"$/ do |name|
	@project = FactoryGirl.create(:project, :name => name)
end

Then /^the page should have the title "([^"]*)"$/ do |title|
  page.should have_selector('title', title)
end
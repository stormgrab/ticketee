Then(/^I should not see "(.*?)" link$/) do |text|
  page.should_not(have_css("a",:text => text),"Expected not to see #{text} link but did")
end

Then(/^I should see "(.*?)" link$/) do |text|
   page.should(have_css("a",:text => text),"Expected to see #{text} link but did not")
end

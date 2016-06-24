Given(/^Inicio la aplicacion$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end

Then(/^Debo ver elemento con id "(.*?)"$/) do |elementId|
  have_selector(elementId)
end



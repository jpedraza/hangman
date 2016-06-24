Given(/^Inicio la aplicacion$/) do
  visit '/'
end

Then(/^Debo ver "(.*?)"$/) do |text|
	last_response.body.should =~ /#{text}/m
end



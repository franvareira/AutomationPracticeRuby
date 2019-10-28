
 After do |scenario|
  scenario_name = scenario.name.gsub(/\s+/, '_').tr('/','_')
  scenario_name = scenario.name.delete(',', '')
  scenario_name = scenario.name.delete('(', '')
  scenario_name = scenario.name.delete(')', '')
  scenario_name = scenario_name.delete('#', '')

  if scenario.failed?
    tira_foto(scenario_name.downcase!, 'falhou')
  else
    tira_foto(scenario_name.downcase!, 'passou')
  end
   unless BROWSER.eql?('handles')
     Capybara.current_session.driver.quit
   end
 end 

AfterStep do
  encoded_img = page.driver.browser.screenshot_as(:base64)
  embed("data:image/png;base64,#{encoded_img}",'image/png')
end
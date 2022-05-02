# frozen_string_literal: true

Given('I am alredy on Invoice List Page with my credentials {string} and {string}') do |user_name, pass|
  steps %(
    Given I visit the login page
    Given I put the user name "#{user_name}" and the password "#{pass}"
    When I click on the login button
  )
end

Then('the "{string}" will be displayed to me') do |columns|
  expect(page).to have_text columns
end

Then('I can verify if the informations are corrects about invoice details of the line {string}') do |line|
  if line.eql? '1'
    @invoice_number = @invoice_list_page.invoice_number_first_line
    @hotel_name = @invoice_list_page.hotel_name_first_line
    @invoice_date = @invoice_list_page.invoice_date_first_line
    @invoice_due_date = @invoice_list_page.due_date_first_line
  elsif line.eql? '2'
    @invoice_number = @invoice_list_page.invoice_number_second_line
    @hotel_name = @invoice_list_page.hotel_name_second_line
    @invoice_date = @invoice_list_page.invoice_date_second_line
    @invoice_due_date = @invoice_list_page.due_date_second_line
  else
    puts line + ' line not registred yet.'
  end

  @invoice_list_page.invoice_first_link

  new_window = windows.last
  page.within_window new_window do
    expect(@invoice_details_page.invoice_number_detail).to have_text(@invoice_number)
    expect(@invoice_details_page.hotel_name_detail).to eql(@hotel_name)
    expect(@invoice_details_page.invoice_date_detail).to end_with(@invoice_date)
    expect(@invoice_details_page.due_date_detail).to end_with(@invoice_due_date)
  end
end

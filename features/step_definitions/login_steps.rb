# frozen_string_literal: true

Given('I visit the login page') do
  @urls.go_to_base_url
end

Given('I put the user name {string} and the password {string}') do |username, password|
  @login_page.user_name_txt(username)
  @login_page.user_password_txt(password)
end

When('I click on the login button') do
  @login_page.login_btn
end

Then('I will see {string}') do |message|
  expect(page).to have_text message
end

Given('I put the wrong credentials "{string}"') do |invalid_credentials|
  file = YAML.load_file(File.join(Dir.pwd, 'features/support/fixtures/invalid_credentials.yaml'))
  invalid = file[invalid_credentials]

  steps %(
    Given I put the user name "#{invalid['username']}" and the password "#{invalid['password']}"
  )
end

Then('I can logout') do
  @login_page.logout_btn
  expect(page).to have_text('Login')
end

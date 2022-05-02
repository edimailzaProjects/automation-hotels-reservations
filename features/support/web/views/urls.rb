# frozen_string_literal: true

# This class makes it possible access the URLs of the system
class Urls
  include Capybara::DSL

  def go_to_login_url
    visit 'https://automation-sandbox.herokuapp.com/'
  end
end

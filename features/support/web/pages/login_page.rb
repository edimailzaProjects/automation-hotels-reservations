# frozen_string_literal: true

# This class mapping the elements of the login page
class LoginPage
  include Capybara::DSL

  def user_name_txt(email)
    find('input[name=username]').set email
  end

  def user_password_txt(password)
    find('input[name=password]').set password
  end

  def login_btn
    find('button[id=btnLogin]').click
  end

  def logout_btn
    click_link 'Logout'
  end
end

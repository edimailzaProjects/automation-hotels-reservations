# frozen_string_literal: true

require 'base64'

Before do
  page.current_window.maximize
  @invoice_details_page = InvoiceDetailsPage.new
  @invoice_list_page = InvoiceListPage.new
  @login_page = LoginPage.new
  @urls = Urls.new
end

After do |scenario|
  if scenario.failed?
    shot_file = page.save_screenshot('logs/screenshots/problem.png')
    shot_b64 = Base64.encode64(File.open(shot_file, 'rb').read)
    embed(shot_b64, 'image/png', 'Screenshot')
  end
end

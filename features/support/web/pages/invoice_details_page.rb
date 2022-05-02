# frozen_string_literal: true

# This class mapping the elements of the Invoice Details Page
class InvoiceDetailsPage
  include Capybara::DSL

  def hotel_name_detail
    find('h4[class=mt-5]').text
  end

  def invoice_number_detail
    inv_num = find('h6[class=mt-2]').text
    inv_num.delete('#')
  end

  def invoice_date
    find('div > ul > li:nth-child(1) > span').text
  end

  def invoice_date_detail
    find('div > ul > li:nth-child(1)').text
  end

  def due_date
    find('div > ul > li:nth-child(2) > span').text
  end

  def due_date_detail
    find('div > ul > li:nth-child(2)').text
  end

  def booking_code
    find('table:nth-child(8) > tbody > tr:nth-child(1) > td:nth-child(1)').text
  end

  def booking_code_detail
    find('table:nth-child(8) > tbody > tr:nth-child(1) > td:nth-child(2)').text
  end

  def room
    find('table:nth-child(8) > tbody > tr:nth-child(2) > td:nth-child(1)').text
  end

  def room_detail
    find('table:nth-child(8) > tbody > tr:nth-child(2) > td:nth-child(2)').text
  end

  def total_stay_count
    find('table:nth-child(8) > tbody > tr:nth-child(3) > td:nth-child(1)').text
  end

  def total_stay_count_detail
    find('table:nth-child(8) > tbody > tr:nth-child(3) > td:nth-child(2)').text
  end

  def total_stay_amount
    find('table:nth-child(8) > tbody > tr:nth-child(4) > td:nth-child(1)').text
  end

  def total_stay_amount_detail
    find('table:nth-child(8) > tbody > tr:nth-child(4) > td:nth-child(2)').text
  end

  def check_in
    find('table:nth-child(8) > tbody > tr:nth-child(5) > td:nth-child(1)').text
  end

  def check_in_detail
    find('table:nth-child(8) > tbody > tr:nth-child(5) > td:nth-child(2)').text
  end

  def check_out
    find('table:nth-child(8) > tbody > tr:nth-child(6) > td:nth-child(1)').text
  end

  def check_out_detail
    find('table:nth-child(8) > tbody > tr:nth-child(6) > td:nth-child(2)').text
  end

  def customer
    find('h5:nth-child(9)').text
  end

  def customer_details
    customer = find('section > div > div').text
    customer.delete("\n")
  end

  def deposit_now
    find('table:nth-child(12) > thead > tr > td:nth-child(1)').text
  end

  def deposit_now_detail
    find('table:nth-child(12) > tbody > tr > td:nth-child(1)').text
  end

  def tax_vat
    find('table:nth-child(12) > thead > tr > td:nth-child(2)').text
  end

  def tax_vat_detail
    find('table:nth-child(12) > tbody > tr > td:nth-child(2)').text
  end

  def total_amount
    find('table:nth-child(12) > thead > tr > td:nth-child(3)').text
  end

  def total_amount_detail
    find('table:nth-child(12) > tbody > tr > td:nth-child(3)').text
  end
end

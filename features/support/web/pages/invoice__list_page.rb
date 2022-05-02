# frozen_string_literal: true

# This class mapping the elements of the Invoice List Page
class InvoiceListPage
  include Capybara::DSL
  
  def invoice_number_first_line
    invoice_number_first = find('div:nth-child(3) > div:nth-child(1)').text
    invoice_number_first.chomp
  end

  def invoice_number_second_line
    invoice_number_second = find('div:nth-child(4) > div:nth-child(1)').text
    invoice_number_second.chomp
  end

  def hotel_name_first_line
    hotel_name_first = find('div:nth-child(3) > div:nth-child(2)').text
    hotel_name_first.chomp
  end

  def hotel_name_second_line
    hotel_name_second = find('div:nth-child(4) > div:nth-child(2)').text
    hotel_name_second.chomp
  end

  def invoice_date_first_line
    invoice_date_first = find('div:nth-child(3) > div:nth-child(3)').text
    invoice_date_first.chomp
  end

  def invoice_date_second_line
    invoice_date_second = find('div:nth-child(4) > div:nth-child(3)').text
    invoice_date_second.chomp
  end

  def due_date_first_line
    due_date_first = find('div:nth-child(3) > div:nth-child(4)').text
    due_date_first.chomp
  end

  def due_date_second_line
    due_date_second = find('div:nth-child(4) > div:nth-child(4)').text
    due_date_second.chomp
  end

  def invoice_first_link
    find('div:nth-child(3) > div:nth-child(5) > a').click
  end

  def invoice_second_link
    find('div:nth-child(4) > div:nth-child(5) > a').click
  end
end

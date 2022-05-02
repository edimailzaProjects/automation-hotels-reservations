# frozen_string_literal: true

When('I click the Invoice Details link for the first item presented in the screen') do
  @invoice_list_page.invoice_first_link
end

Then('I will see the {string}, the {string} and {string}') do |code, kind_data, more_details|
  new_window = windows.last
  page.within_window new_window do
    case code
    when 'HotelName'
      expect(@invoice_details_page.hotel_name_detail).to eql(more_details)
    when 'InvoiceDate'
      if @invoice_details_page.invoice_date == kind_data
        expect(@invoice_details_page.invoice_date_detail).to end_with(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_invoice_date.png')
        expect(@invoice_details_page.invoice_date).to eql(kind_data)
      end
    when 'DueDate'
      if @invoice_details_page.due_date == kind_data
        expect(@invoice_details_page.due_date_detail).to end_with(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_due_date.png')
        expect(@invoice_details_page.due_date).to eql(kind_data)
      end
    when 'Room'
      if @invoice_details_page.room == kind_data
        expect(@invoice_details_page.room_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_room.png')
        expect(@invoice_details_page.room).to eql(kind_data)
      end
    when 'InvoiceNumber'
      expect(@invoice_details_page.invoice_number_detail).to have_content(more_details)
    when 'BookingCode'
      if @invoice_details_page.booking_code == kind_data
        expect(@invoice_details_page.booking_code_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_booking_code.png')
        expect(@invoice_details_page.booking_code).to have_content(kind_data)
      end
    when 'ChecIn'
      if @invoice_details_page.check_in == kind_data
        expect(@invoice_details_page.check_in_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_check_in.png')
        expect(@invoice_details_page.check_in).to have_content(kind_data)
      end
    when 'CheckOut'
      if @invoice_details_page.check_out == kind_data
        expect(@invoice_details_page.check_out_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_check_out.png')
        expect(@invoice_details_page.check_out).to have_content(kind_data)
      end
    when 'TotalStayCount'
      if @invoice_details_page.total_stay_count == kind_data
        expect(@invoice_details_page.total_stay_count_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_total_stay_count.png')
        expect(@invoice_details_page.total_stay_count).to eql(kind_data)
      end
    when 'CustomerDetails'
      if @invoice_details_page.customer == kind_data
        expect(@invoice_details_page.customer_details).to start_with 'JOHNY SMITH'
        expect(@invoice_details_page.customer_details).to have_content 'R2, AVENUE DU MAROC'
        expect(@invoice_details_page.customer_details).to end_with '123456'
      else
        page.save_screenshot('logs/screenshots/problem_customer.png')
        expect(invoice_details_page.customer_details).to start_with 'JOHNY SMITH'
        expect(invoice_details_page.customer_details).to have_content 'R2, AVENUE DU MAROC'
        expect(invoice_details_page.customer_details).to end_with '123456'
      end
    when 'TotalStayAmount'
      if @invoice_details_page.total_stay_amount == kind_data
        expect(@invoice_details_page.total_stay_amount_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_total_stay_amount.png')
        expect(@invoice_details_page.total_stay_count).to eql(kind_data)
      end
    when 'Tax&VAT'
      if @invoice_details_page.tax_vat == kind_data
        expect(@invoice_details_page.tax_vat_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_tax_vat.png')
        expect(@invoice_details_page.tax_vat).to eql(kind_data)
      end
    when 'DepositNow'
      if @invoice_details_page.deposit_now == kind_data
        expect(@invoice_details_page.deposit_now_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_deposit_now.png')
        expect(@invoice_details_page.deposit_now).to eql(kind_data)
      end
    when 'TotalAmount'
      if @invoice_details_page.total_amount == kind_data
        expect(@invoice_details_page.total_amount_detail).to eql(more_details)
      else
        page.save_screenshot('logs/screenshots/problem_total_amount.png')
        expect(@invoice_details_page.total_stay_count).to eql(kind_data)
      end
    end
  end
end

# Invoice details feature
# Sprint: April 29/2022 until May 04/2022

@validate_invoice_details_feature
Feature: Invoice Details
    As a registered user
    I want to see the invoice details
    So that I can verify the data's invoices

    Scenario Outline: Valid informations
        Given I am alredy on Invoice List Page with my credentials "demouser" and "abc123"
        When I click the Invoice Details link for the first item presented in the screen
        Then I will see the "<code>", the "<kind_data>" and "<more_details>"
        Examples:
            | code            | kind_data         | more_details                            |
            | HotelName       | Hotel Name        | Rendezvous Hotel                        |
            | InvoiceDate     | Invoice Date:     | 14/01/2018                              |
            | DueDate         | Due Date:         | 15/01/2018                              |
            | Room            | Room              | Superior Double                         |
            | InvoiceNumber   | Invoice Number    | 110                                     |
            | BookingCode     | Booking Code      | 0875                                    |
            | CustomerDetails | Customer Details  | JOHNY SMITH  R2, AVENUE DU MAROC 123456 |
            | CheckIn         | Check-In          | 14/01/2018                              |
            | CheckOut        | Check-Out         | 15/01/2018                              |
            | TotalStayCount  | Total Stay Count  | 1                                       |
            | TotalStayAmount | Total Stay Amount | $150                                    |
            | DepositNow      | Deposit Now       | USD $20.90                              |
            | Tax&VAT         | Tax&VAT           | USD $19.00                              |
            | TotalAmount     | Total Amount      | USD $209.00                             |


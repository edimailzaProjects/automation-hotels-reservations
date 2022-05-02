# Invoice list feature
# Sprint: April 29/2022 until May 04/2022

@validate_invoice_list_feature
Feature: Invoice List
    As a registered user
    I want to see the list os invoices
    So that I can verify who did booking in my hotel

    Scenario Outline: Valid Guest List
        Given I am alredy on Invoice List Page with my credentials "demouser" and "abc123"
        Then the "<data_table>" will be displayed to me
        And I can verify if the informations are corrects about invoice details of the line "1"
        Examples:
            | data_table       |
            | "Hotel Name"     |
            | "Invoice Date"   |
            | "Due Date"       |
            | "Invoice Number" |
            | "Invoice Link"   |
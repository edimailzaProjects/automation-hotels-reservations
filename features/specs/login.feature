# Login feature
# Sprint: April 29/2022 until May 04/2022

@login_feature
Feature: User Login
    As a registered user
    I want to login to the system
    So that I can verify the reservations invoices

    Background: Visit login Page
        Given I visit the login page

    @login_positive
    Scenario: Valid credentials
        Given I put the user name "demouser" and the password "abc123"
        When I click on the login button
        Then I will see "Invoice List"
        And I can logout

    @login_negative
    Scenario Outline: Invalid credentials
        Given I put the wrong credentials "<invalid_credentials>"
        When I click on the login button
        Then I will see "Wrong username or password"

        Examples:
            | invalid_credentials |
            | "case_1"            |
            | "case_2"            |
            | "case_3"            |
            | "case_4"            |
            | "case_extra_1"      |
            | "case_extra_2"      |
            | "case_extra_3"      |
            | "case_extra_4"      |
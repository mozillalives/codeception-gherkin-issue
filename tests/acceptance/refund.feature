@important
Feature: Refund item
  In order to get satisfaction
  As a customer
  I need to be able to get refunds

  Scenario: Jeff returns a faulty microwave
    Given Jeff has bought a microwave for "$100"
    When he returns the microwave
    Then Jeff should be refunded $100

  Scenario: Jeff returns a faulty microwave2
    Given Jeff has bought a microwave for "$200"
    When he returns the microwave
    Then Jeff should be refunded $200

  Scenario: Jeff returns a faulty item
    Given Jeff has bought a microwave for "$75"
    When he returns the microwave
    Then Jeff should be refunded $75
  
  Scenario Outline: Jeff returns a faulty item
    Given Jeff has bought a microwave for <amount>
    When he returns the microwave
    Then Jeff should be refunded <amount>
  
  Examples:
  | amount |
  | $25 |
  | $50 |
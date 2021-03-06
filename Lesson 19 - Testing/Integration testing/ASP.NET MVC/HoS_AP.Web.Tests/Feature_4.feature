﻿Feature: Delete character
    As a Heroes of Storm Administrator
    In order to feel control over system state
    I want to be able to delete character

Scenario: Being able to delete character
    Given there are the following characters in system
        | Name    | Price | Type     | Active | Deleted |
        | Zeratul | 10.00 | Assassin | True   | False   |
    When I am logged in as “Megan”
        And I navigate to “Edit Zeratul” page
        And I click "Delete" button
    Then I should be on “Listing” page
    And I should see character in list
        | Name    | Price | Type     | Active | Deleted |
        | Zeratul | 10.00 | Assassin | True   | True    |
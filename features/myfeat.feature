Feature: Rentit
  As a customer
  Such that I search for a plant by name, start date and end date

  Scenario: Searching plants with name (found a result)
    Given the following plants are in the data base
          | name        | description	         | price    | startdate     | enddate       |
          | Excavator   | 15 Tone Mini excavator | 150.00	| 2017-02-28    | 2017-12-18    |
          | Excavator   | 15 Tone Mini excavator | 150.00	| 2017-02-28    | 2017-12-18    |
          | Robocop     |  8 Tone Mini excavator | 190.00	| 2016-05-28    | 2017-12-14    |

        And I want to search for "Excavator" from "2017-02-28" to "2017-12-18"
        And I open Rentit' web page
        And I enter the name, startdate, enddate
    When I submit the request
    Then I should receive a confirmation message with a list of plan

  Scenario: See details of a Plant
      Given the following plants are in the data base
          | name        | description	         | price    | startdate     | enddate       |
          | Excavator   | 15 Tone Mini excavator | 150.00	| 2017-02-28    | 2017-12-18    |
          | Excavator   | 15 Tone Mini excavator | 150.00	| 2017-02-28    | 2017-12-18    |
          | Robocop     |  8 Tone Mini excavator | 190.00	| 2016-05-28    | 2017-12-14    |
        And I want to see details of one name "name"
        And I open Rentit' web page
        And I enter the name, startdate, enddate
        And I submit the request
        And I should receive a confirmation message with a list of plan        
      When I click to select on the corresponding plant
      Then I should see the details of the plant
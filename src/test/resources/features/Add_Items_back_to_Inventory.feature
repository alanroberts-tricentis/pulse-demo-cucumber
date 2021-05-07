#Benefit of qTest's BDD integration is that we have a direct 
#intgeration to Git so that everything is version controlled. 

Feature:Add Items back to Inventory
  As a store owner,
  I want to add items back to inventory when they are returned or exchanged,
  so that I can track inventory.


Scenario: Items returned for refund should be added to inventory.
    Given that a customer previously bought a black sweater from me
    And I have three black sweaters in inventory
    When they return the black sweater for a refund
    Then I should have four black sweaters in inventory

Scenario: Exchanged items should be returned to inventory.
    Given that a customer previously bought a blue garment from me
    And I have two blue garments in inventory
    And three black garments in inventory
    When they exchange the blue garment for a black garment
    Then I should have three blue garments in inventory
    And two black garments in inventory
    
Scenario Outline: Blenders
    Given I put <thing> in a blender,
    When I switch the blender on
    Then it should transform into <other thing>
    Then Alan will conclude the demo shortly

Examples: Amphibians
   | thing         | other thing |
   | Red Tree Frog | mush        |

Examples: Consumer Electronics
   | thing         | other thing |
   | iPhone        | toxic waste |
   | Galaxy Nexus  | toxic waste |

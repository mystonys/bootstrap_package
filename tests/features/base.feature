Feature: Base Feature
  In order to ensure that my website has not "dead" pages
  As a Visitor
  I want to make sure I can see something relevant on every page

  Scenario: Page "Welcome" has relevant content
    Given I am on "/"
    Then I should see "Congratulations, you have successfully installed TYPO3"

  # @todo read pages from sitemap and check their code status + main column is not empty
  Scenario: Page "/content-examples/site-map/" has relevant content
    Given I am on "/content-examples/site-map/"
    Then I should see "Dynamic Site Maps"

  Scenario: Page "/content-examples/news/" has relevant content
    Given I am on "/content-examples/news/"
    Then I should see "All news Articles"

  Scenario: Click a News in list view and check whether it opens the detail view of News
    Given I am on "/content-examples/news/"
    And I follow "TYPO3 - An idea is born"
    Then I should be on "/content-examples/news/d/article/typo3-an-idea-is-born/"
    And I should see "TYPO3 - An idea is born"


  Scenario: Click go back link in detail view and check whether it goes to list view of News
    Given I am on "/content-examples/news/d/article/typo3-an-idea-is-born/"
    And I follow "Back"
    Then I should be on "/content-examples/news/"
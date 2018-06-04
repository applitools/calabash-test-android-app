# Tag @eyes tag is used to mark scenarios which are eyes tests
# Along with the @eyes tag next tags might be used:
#  @eyes_app_name "Application Name"
#    sets app_name for eyes. if skipped, the feature name will be used.
#  @eyes_api_key "DUMMY_KEY"
#    The API key is set implicitly from environment variable APPLITOOLS_API_KEY by default. The @eyes_api_key tag will override it.
#
#  @eyes_test_name "a_test_name"
#    Sets the eyes test name for a particular scenario. If skipped, the scenario name will be used.
#
#  Eyes test scenario should contain one or more those steps:
#   I check window
#      If current view contains a scrollable element, it's entire content will be captured
#
#   I check window with description "description"
#      description is passed as a description of a screenshot
#   I check viewport window
#       Captures content of a current view "as is"
#   I check viewport window with description "description"
#   I check element "calabaish.element.selector"
#       Captures content of the element. If the element is scrollable, the entire content will be captured
#   I check element "calabaish.element.selector" with description "description"
#   I check viewport element "calabash.element.selector"
#       Captures the content of the element "as is" the currently visible part will be reported
#   I check viewport element "calabash.element.selector" with description "description"

#   Each scenario might have more than one 'check' steps

#See lib/applitools/calabash/eyes_hooks.rb for details
@eyes
@eyes_app_name "Android Calabash SDK"
#  @eyes_api_key "A KEY"

Feature: Applitools Eyes Calabash SDK base functionality
  @eyes_test_name "Check window without ScrollView"
  Scenario: I get into screen containing scroll view
    When I wait
    Then I check window with description "Check window without ScrollView"

  @eyes_test_name "ScrollView element"
  Scenario: I check the ScrollView exactly
    When I wait for 1 second
    And I press view with id "btn_vert_scroll"
    And I wait
    Then I check element "android.widget.ScrollView" with description "ScrollView element"

  @eyes_test_name "ScrollView element (viewport)"
  Scenario: I check the visible part of a ScrollView
    When I wait for 1 second
    And I press view with id "btn_vert_scroll"
    And I wait
    Then I check viewport element "android.widget.ScrollView" with description "ScrollView element (viewport)"

  @eyes_test_name "Check window (with ScrollView)"
  Scenario: I check the activity contains ScrollView
    When I wait for 1 second
    And I press view with id "btn_vert_scroll"
    And I wait
    Then I check window

  @eyes_test_name "Check window (with ScrollView) viewport only"
  Scenario: I check the activity contains ScrollView, viewport only
    When I wait for 1 second
    And I press view with id "btn_vert_scroll"
    And I wait
    Then I check viewport window with description "Check window (viewport only)"

  Scenario: I check the HorizontalScrollView exactly
    When I wait for 1 second
    And I press view with id "btn_horizontal_scroll"
    And I wait
    # Calls eyes.check eventually, enire means full page screenshot
    # There are no implementation for HorizontalScrollView (Android)
#    Then the entire element "android.widget.HorizontalScrollView" should match a baseline
    Then I check element "android.widget.HorizontalScrollView"

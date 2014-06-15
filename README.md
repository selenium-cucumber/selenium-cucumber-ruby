Welcome to selenium-cucumber
=================

SELENIUM WEBDRIVER WITH RUBY &amp; CUCUMBER


selenium-cucumber is a behavior driven development (BDD) approach to write automation test script to test web applications.

Documentation
-------------
* [Installation](doc/installation.md)
* [Predefined steps](doc/canned_steps.md)

Writing a test
--------------

The Cucumber features goes in the `features` library and should have the ".feature" extension.

You can start out by looking at `features/my_first.feature`. You can extend this feature or make your own using some of the [predefined steps](doc/canned_steps.md) that comes with selenium-cucumber.

Generate a Cucumber skeleton
----------------------------

To get started with selenium-cucumber it might be a good idea to run `selenium-cucumber gen`. It will create a Cucumber skeleton in the current folder like this:

    features
    |_support
    | |_env.rb
    |_step_definitions
    | |_calabash_steps.rb
    |_my_first.feature

In this skeleton you find all the predefined steps that comes with selenium-cucumber. Try to take a look `my_first.feature` and change it to fit your web app.


Predefined steps
-----------------

The predefined steps are located in the `lib/selenium-cucumber` folder. A compiled list of predefined steps with comments is available [here](doc/canned_steps.md) 

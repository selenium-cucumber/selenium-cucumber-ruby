Welcome to selenium-cucumber
=================

selenium-cucumber : Automation Tesing Using Ruby

Selenium-cucumber is a behavior driven development (BDD) approach to write automation test script to test web applications.
It enables you to write and execute automated acceptance tests of web apps.
It is cross-platform, open source and free.
Automate your test cases with without/less coding.

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


License
-------

(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
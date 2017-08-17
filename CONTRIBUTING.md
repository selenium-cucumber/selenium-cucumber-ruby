# Contributing

We would love to get any pull requests. Here's a quick guide.

Fork, then clone the repo:

    git clone git@github.com:your-username/selenium-cucumber.git

Run `/example` tests through your local repo:

    1. cd your_repo
    2. cd example
    3. Open Gemfile
    4. Uncomment `gem 'selenium-cucumber', path: 'your local repo path'` and
       replace 'your local repo path' with your local repo path
    5. Comment out `gem 'selenium-cucumber'`
    6. bundle install
    7. Run tests as:
       `cucumber` (or `cucumber features/any_feature_name.feature`)

Make your change. Add tests for your change in `/example`.
Make sure to run all the test(or features) successfully.
Commit your changes but don't forget to revert the changes of comment/uncomment
in Gemfile(done to run tests through local repo).

Push to your fork and [submit a pull request][pr].

[pr]: https://github.com/selenium-cucumber/selenium-cucumber-ruby/compare

At this point you're waiting on us. We like to at least comment on pull requests
or may suggest some changes or discuss improvements or alternatives.

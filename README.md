# Tdd_task

# String Calculator TDD Project

This project implements a **String Calculator** in Ruby using **Test-Driven Development (TDD)** with **RSpec**.  
We also use **SimpleCov** to track test coverage.

---

## Prerequisites

Before setting up the project, ensure you have:

- **Ruby 3.2.0**  
  Install using [RVM](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).

- **Bundler**  
  gem install bundler

## Running Tests and Generating Coverage

Once you have installed dependencies with `bundle install`, you can run all tests and generate a coverage report using **RSpec** and **SimpleCov**.

1. **Run all RSpec tests**

bundle exec rspec

This will execute all test cases in the spec/ folder.

You will see the test results in your terminal.

Generate a coverage report

SimpleCov automatically tracks coverage when you have it configured at the top of spec/spec_helper.rb

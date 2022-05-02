# automation-hotels-reservations
Using Cucumber, rspec and capybara, this test automation project aims validate data tables values in the application of hotels reservations.
May 2022

## You have must to have

* [VS Code IDE](https://code.visualstudio.com/download) installed in your computer;
* [Ruby language](https://www.ruby-lang.org/) installed (version 2.7.2 or higher);
* [Chrome Driver](https://chromedriver.chromium.org/downloads) installed (version  100.0.4896.127 or higher).

## Steps

### Clone this repository

```shell
git clone git@github.com:edimailzaProjects/automation-hotels-reservations.git
cd automation-hotels-reservations
```

### Check the Ruby version

```shell
ruby --version
```
The ouput should start with something like `ruby 2.7.2` 

### Install bundler

```shell
gem install bundler
```

### Install Ruby dependecies

```shell
bundle install
```

### Run one feature scenario of this project

```shell
cucumber --t @feature_tag_name
```

### Run all features of this project

```shell
cucumber
```
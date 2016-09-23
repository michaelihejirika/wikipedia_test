Wikipedia Test
==============
Before running project, you'll need to:

1. Install ruby '2.2.2' using a version manager like [RVM](https://rvm.io/rvm/install) or [rbenv](https://github.com/rbenv/rbenv)
2. Install the project dependencies with `bundle install`
3. Install [the correct version of Firefox](https://ftp.mozilla.org/pub/firefox/releases/43.0)


Running the all the tests using the default browser:
```
bundle exec cucumber features
```

Running a specific test using the default browser:
```
bundle exec cucumber features/wikipedia_search.feature
```

You can also specify a different browser with:
```
BROWSER=chrome bundle exec cucumber features
```

### If you don't have Chromedriver installed ###

Install with:
```
brew install chromedriver
```


### Methodologies used ###

#### Page Object Model ####

The approach used in designing this framework is called *Page Object Model(POM)*. I took this approach to make my code more *readable*, *maintainable*, and *reusable*.


What is POM?

- *Page Object Model* is a design pattern to create *Object Repositories* for web UI elements.
- I used this method for each page in the application under test.
- Each page class will find the WebElements and actions you can perform on them.
- The naming of the methods reflect the actions they perform.
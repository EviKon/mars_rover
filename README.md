Project Setup
-----
In order to set up the project and run it firstly you need to clone it by running

```
git clone https://github.com/EviKon/mars_rover.git
```

Then you'll need to get to the folder by running

```
cd mars_rover
```

Then you will need to set up the project in order to be able to run it. You will need to bundle it by running

```
bundle install
```

In order to run it you will need to have Ruby installed on your machine and then run

```
ruby lib/drive_mars_rover.rb
```

This file calls the class that executes the program and it includes the examples you provided me in the challenge. 
You can change the input and get different outcomes or you can add more examples to test it more thoroughly.

Testing
----
If you want to run the specs for this program you only need to run

```
bundle exec rspec spec
```

Next Steps
----
In order to continue further with this I would add some validations for the initial position to make sure that the rover starts on the grid.
Also I would create another class as the entry for the program that would accept multiple rovers and could compute the entries and return all of them.
Furthermore I could include some more tests for edge cases, that would help with error handling.
Generally more gems could be used like adding rubocop to make sure that there is some linting process.
Also probably I could refactor the code and use some design pattern like the command pattern.
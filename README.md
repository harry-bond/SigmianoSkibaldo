[![Sigmaino Skibaldo Ruby Tests](https://github.com/harry-the-fish/sigmiano-skibaldo/actions/workflows/ruby.yml/badge.svg)](https://github.com/harry-the-fish/sigmiano-skibaldo/actions/workflows/ruby.yml)
# Sigmiano Skibaldo
A website with the final goal of tracking football teams and players throughout the season.
The players will be able to login with an account and view their own statistics. 
There will be a page dedicated to viewing the top scorers, most man of the matches etc.
They will be able to see their team along with profile pictures set by the players.
An admin page for the site will be available where they simply have to input the man of the match, final scores (with the scorers) for each fixtures.
This has the potential to be expanded to a referees section to save the admin having having to put it in.

## File Structure
The below document details the file structure used in the project.

### Routes
The below document details the routes to each of the pages on the site map.
#### General Routes

* `'/'`
  * Redirects the user to the home page
* `'/home'`
  * Shows the live league table along with upcoming fixtures
* `'/player-statistics'`
  * Displays the current players statistics
* `'/our_team'`
  * Shows the live teams statistics
* `'/as-it-stands-awards'`
  * Calculates the players currently in top position for each player awards
  

### Directories

The below tree is based on the current site map
```
.
└── sigmiano-skibaldo/
    │
    ├── controllers/
    │   └── general-controller.rb
    │
    ├── database/
    │   ├── test_db.sqlite
    │   └── development_db.sqlite
    │
    ├── models/
    │   ├── Player.rb
    │   └── Team.rb
    │
    ├── public/
    │   ├── styles/
    │   │    └── general-styles.css
    │   └── images/
    │         └── ...(images temp store)
    ├── spec/
    │   ├── acceptance/
    │   │   ├── home_spec.rb
    │   │   └── ...(any other acceptance tests)
    │   │
    │   ├── integration/
    │   │   └── ...(any integration tests)
    │   │
    │   ├── unit/
    │   │   └── ...(any unit tests)
    │   │
    │   ├── coverage/
    │   │    ├── assets/
    │   │    │   └── ...(files for creating index.hmtl page)
    │   │    │
    │   │    ├── lcov/
    │   │    │   └── ...(files for git workflow for passing tests)
    │   │    │
    │   │    └── index.html (coverage report)
    │   │
    │   └── spec_helper.rb
    │
    ├── views/
    │   └──  landing_page.html.erb
    │
    ├── .Gitignore
    ├── .rspec
    ├── App.rb
    ├── config.ru
    ├── Gemfile.rb
    ├── Gemfile.lock
    ├── LICENSE
    └── README.md
```

### Explanation of files
Gemfile - Used for adding extra needed packages into ruby sinatra

Gemfile.lock - Created when the application is ran from the Gemfile

App.rb - The main file that starts uo the whole app

.rspec - needed to run the spec helper before any tests are ran

.gitignore - files that are ignored by github, test files etc arent needed to be shared



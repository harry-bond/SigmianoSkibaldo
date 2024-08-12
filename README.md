[![Sigmaino Skibaldo Ruby Tests](https://github.com/harry-the-fish/sigmiano-skibaldo/actions/workflows/ruby.yml/badge.svg)](https://github.com/harry-the-fish/sigmiano-skibaldo/actions/workflows/ruby.yml)
# Sigmiano Skibaldo
A website for tracking football stats
  
## File Structure
The below document details the file structure used in the project.

### Routes
The below document details the routes to each of the pages on the site map.
#### General Routes

* `'/'`
  * Displays "Sinatra Application"
  

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
    │   └── Player.rb
    │
    ├── public/
    │   └──  styles/
    │       └── general-styles.css
    │
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



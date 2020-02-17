# README

Hello! You can try this project here:

`https://secure-peak-32541.herokuapp.com/`

### Ruby version

Version: 2.6.3

### System dependencies

To run this project you need the next apps:

#### Sidekiq

#### Redis
For install: 

`brew install redis` 

Launch: 

`launchctl load ~/Library/LaunchAgents/homebrew.mxcl.redis.plist`
#### Elasticsearch
To use Searhkick first you need exec this:
```
    brew install elasticsearch
    brew services start elasticsearch 
```
#### Postgresql

### How to run

#### 1. Create index
`rails searchkick:reindex CLASS=Mushroom`

In case you need reset all indices you can use this:

`rails mushrooms:clean_indices`

#### 2. Load data
`rails mushrooms:load_all`

#### 3. Launch server

An easy command like:

`rails s `

### 4. Run the tests:

`bundle exec rspec`

### 5. Test Coverage with [SimpleCov](https://github.com/colszowka/simplecov)

`COVERAGE=on bundle exec rspec`


## Pending tasks:

* Add requests test
* Add sidekiq tests

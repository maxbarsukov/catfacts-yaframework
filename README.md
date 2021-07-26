# CatFacts  

This is a simple application created to demonstrate the capabilities of [**yaframework**](https://github.com/maxbarsukov/yaframework).

## Functionality included

- Read fun facts about cats
- That's all

## About the code

- Built with `Yaframework`
- Using `Boostrap` for styles
- `Mongoid` as ODM
- `MongoDB` as DB

## Setup

Clone this repository:

`git clone git@github.com:maxbarsukov/catfacts-yaframework.git`

Run `bundle install`

Setup database:

```shell
mongo

use catfacts
```

Setup seeds:

`ruby db/seeds.rb`


## Run

Dev: `rake start` and open http://localhost:9393/

Production:

    mongod --dbpath db/
    puma -e production -t 16:16 config.ru

and open http://localhost:9292/

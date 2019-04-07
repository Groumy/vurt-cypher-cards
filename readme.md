# vurt-cypher-cards

This project is to create cards for the [Vurt-The Roleplaying Game](http://www.ravendeskgames.com/vurt-the-tabletop-roleplaying-game).
The cards will be generated with the help of the ruby gem [Squib](https://github.com/andymeneely/squib) that will take a yaml file as input.

[![CircleCI](https://circleci.com/gh/Groumy/vurt-cypher-cards/tree/master.svg?style=svg)](https://circleci.com/gh/Groumy/vurt-cypher-cards/tree/master)

# Installation

```
cinst -y ruby --version 2.5.3.101
gem install bundler
bundle install
```

# Usage

```
rake
```

# Contributing

## CircleCI

I'm using the free version of [CircleCI](https://circleci.com/) as CI/CD tool, as this repo is private. 

## Squib

The Gem used to actually render the cars is [Squib](https://squib.readthedocs.io)
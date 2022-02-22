# Plume technical challenge 1

This challenge is built to assess the ability of a candidate to build a feature in a new environment and with some literature as guidelines.

Some of the new features you might discover during this challenge :
- Rails 7 new assets pipeline
- Tailwind CSS rather than Bootstrap
- Hotwire (optional)

## Requirments

- yarn
- ruby 3.03
- bundler
- node
- foreman (optional)

## Getting started 

Please follow the following steps to get started

**Installation**

1. On Github fork this repo into **a private repo**
2. Clone your fork locally
3. Within the repository run the following commands
  - bundle install
  - yarn install
  - rails db:create db:migrate

**Starting the app**

This app is built with Rails 7 and the new assets pipeline for JS and CSS `rails s` will only start the server without the assets. Two options are available to start the app.

1. Single command

```
`bin/dev`
```

This will start everything you need with a single command.

2. Multiple commands (useful for byebug)

If you need to run byebug or any other debugging tools, solution 1 won't work. In separate tabs run the following commands

```
rails s
```

```
yarn build --watch
```

``` 
rails tailwindcss:watch
```

## The feature to build

The goal is to create a very basic version of our library view in Plume. 

#### Task 1

For this, we provide as an input a CSV file with the data to seed your database. First, analyze the content and create the model(s) you need. then update the seed.rb file accordingly.


#### Task 2

On the root path display all the stories grouped by universe_name. 

### Task 3

Build a card for each story. This card has the cover image, the title, and the description.

Here is an example of how it should look.

The design of the card is also available in this [Figma](https://www.figma.com/file/vsgnaKqwrg7KK5OZGbgLcl/Untitled?node-id=0%3A1) 

### Task 4

For each card when the user clicks on it we would like to display a bigger preview modal. Here is a live example from our app.

To do so you will need to generate a remote modal dynamically. This can be achieved now with Hotwire in a much simpler way than it was before. You can take some inspiration from this [nice article](https://www.bearer.com/blog/how-to-build-modals-with-hotwire-turbo-frames-stimulusjs).


### Submission

Once you have completed your project you add the following users to the repo so that we can review it and ping @adrienpoly on slack.

- @adrienpoly
- @lomig
- @ronanlouarn
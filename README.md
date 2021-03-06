# Human Rights Talks

![screenshot](./docs/screenshot.png)

Capstone projects are solo projects at the end of the each of the [Microverse](https://microverse.org) Main Technical Curriculum sections.  It's a real-world-like project, built with business specifications. 
This Ruby on Rails capstone is based on a redesign of Twitter. And I've called it HRT for "Human Rights Talks".

## Built With

- Ruby v2.7.0
- Ruby on Rails v6.0.2

## Live Demo

[See Demo](https://thawing-wave-61294.herokuapp.com/) 

> This demo doesn't persist uploads. That means that all the images uploaded will be erased few hours later.

## Features
* Devise Authentication and Registration 
* Tweet Comment and Like
* User Following
* Profile page
* Cover Image and profile image upload

## Future features
- Image Sharing 
- Video Sharing

## Tools Used

* [Rails 6](https://rubyonrails.org/)
* Erb template engine
* [Sass](https://sass-lang.com/)
* [Postgres](https://www.postgresql.org/)
* [Rubucop](https://github.com/rubocop-hq/rubocop)

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.7.0
Rails: 6.0.2


### Setup
First, clone the repo to your computer

```
git clone git@github.com:tigamadou/hrt.git
```

Browser to the cloned folder
```
cd hrt
```

Instal gems with:

```
bundle install
```

Setup database with:

```
   rails db:create
   rails db:migrate
```



### Usage

Start server with:

```
    rails s
```

Open `http://localhost:3000/` in your browser.

### Run tests

```
    rpsec --format documentation
```

## Authors

👤 **Amadou IBRAHIM**

- Github: [@genzaraki](https://github.com/genzaraki)
- Twitter: [@tigamadou](https://twitter.com/tigamadou)
- Linkedin: [Amadou IBRAHIM](https://www.linkedin.com/in/amadou-ibrahim-75769167/)

## Project Specifications

1. The user logs in to the app,
2. The user is presented with the homepage (see the *Homepage* screenshot above) that includes:
    1. Left-side menu (includes only links to pages that are implemented).
    2. *Tweets* tab in the cente (skip *Photos* and *Videos* for this MVP).
    3. Right-side section with *Who to follow (*skip *Trending for* this MVP).
3. The *Tweets* section includes:
    1. Simple form for creating a tweet.
    2. List of all tweets (sorted by most recent) that display tweet text and author details.
    
4. The *Who to follow* section includes:
    1. List of profiles that are not followed by the logged-in user (ordered by most recently added).
5. When the user opens the profile page (see the *Userpage* screenshot above), they can see:
    1. Left-side menu (includes only links to pages that are implemented).
    2. Cover picture and *Tweets* tab in the center (skip other tabs and *Tweet to user* form).
    3. Right-side section with *Profile detailed info.*
6. The *Profile detailed info* section includes:
    1. User photo.
    2. Button to follow a user.
    3. Stats: total number of tweets, number of followers and number of following users.
    4. List of people who follow this user.
7. Extras features added
    1. Show Tweet Page
    2. Tweet can be liked
    3. Tweet can be commented
    4. Tweet can be edited by the author
    5. Tweet can be deleted by the author
    6. User profile edition with photo and cover_image upload

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/tigamadou/hrt/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

* This project is based on [Twitter - Redesign of UI details](https://www.behance.net/gallery/14286087/Twitter-Redesign-of-UI-detailss) by [Gregoire Vella](https://www.behance.net/gregoirevella)

## 📝 License

TBA


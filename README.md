# Vote Wichita

This is a project by [Open Wichita](http://openwichita.com) and
[KMUW](http://kmuw.org) to better inform Wichita citizens on upcoming ballot
issues.

## Stack

* [Ruby 2](https://www.ruby-lang.org/)
* [Rails 4](http://rubyonrails.org/)
* [ActiveAdmin 1](http://activeadmin.info/)

## Get Started

Use [rvm](https://rvm.io)! The version and gemset should be
`ruby-2.2.2@vote-wichita`.

```
$ git clone git@github.com:openwichita/vote-wichita.git
$ cd vote-wichita
$ gem install bundler && bundle
$ bundle exec rake db:migrate db:seed
$ bundle exec rails s
```

Then visit http://localhost:3000/admin and log in with 'admin@example.com' and
'password'. Home page will be at http://localhost:3000.

## Plan

Check out the [Google Doc](https://docs.google.com/document/d/1jNYCD8m_1YxIYnLgm3F01IecrxyWRLYnijbx1kywqN8/edit)!

s4lNov2012
==========

This was a project I did for the office for their Facebook page.  It's basic rails using
postgres on the backend, the [Koala](https://github.com/arsduo/koala) gem for
Facebook integration and hosted on Heroku.  I've removed the keys and database
information from the configuration files.

I was under a bit of a fast-approaching deadline when I built this, so there are no tests
written for it.  It's a decent working example of getting Koala to work with facebook
though so it might be helpful to someone out there.  It uses the Koala gem to
allow user signup as well as to make a post to the user's wall when they've
submitted an entry.

The views are in haml and I used sass for the stylesheets.  The
[ActiveAdmin](http://www.activeadmin.info) gem was used by the PR team to do
simple CRUD on the signed up users and submissions.
EventWorld
---------
EventWorld is a Rails Engine which displays realtime events on Google map.

Installation
-----------
Add EventWorld to your Rails 3.2.x application.

```ruby
gem 'event_world', git: 'git://github.com/lukkry/event_world.git'
```

Update your bundle.

    $ bundle install

Copy faye.ru file to your application using generator.

    $ bundle exec rails g event_world:install
    
Run faye server.

    $ rackup faye.ru -s thin -E production

Using the gem
------------
Mount engine to whatever path you choose.

```ruby
mount EventWorld::Engine => "/events"
```

In order to notify EventWorld about new events, just send POST request to the below url with longitude and latitude params.

    $ curl -X POST -d "longitude=-21.897812&latitude=64.131641" http://localhost:3000/events/notify

Enjoy realtime events on Google map.

Example
-------
An example Rails 3.2 application: [event_world_example](http://github.com/lukkry/event_world_example)

Contributing
-----------
EventWorld is an open source project and I encourage contributions ;)

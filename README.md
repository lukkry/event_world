EventWorld [![Build Status](https://secure.travis-ci.org/lukkry/event_world.png?branch=master)](http://travis-ci.org/lukkry/event_world)
---------
EventWorld is a Rails Engine which displays realtime events on Google map (using [V3](https://developers.google.com/maps/documentation/javascript/reference)).

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

Notify EventWorld about new events by initializing `EventWorld::Event` object and call `publish` method on it.

```ruby
event = EventWorld::Event.new({ longitude: 21.89, latitude: 64.13 })
event.publish
```

Enjoy realtime events on Google map.

Example
-------
An example Rails 3.2 application: [event_world_example](http://github.com/lukkry/event_world_example)

Contributing
-----------
EventWorld is an open source project and I encourage contributions ;)

References
----------
[Google Maps Javascript API V3 Reference](https://developers.google.com/maps/documentation/javascript/reference)

License
-------
MIT-LICENSE

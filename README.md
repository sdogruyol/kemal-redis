# kemal-redis

Easily add Redis to your [Kemal](https://github.com/sdogruyol/kemal) application.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  kemal-redis:
    github: sdogruyol/kemal-redis
```


## Usage


```crystal
require "kemal"
require "kemal-redis"

redis_connect # With default host and port

# Make sure to yield `env`.
get "/" do |env|
  redis.set("foo", "bar")
  foo = redis.get("foo")
  "Value of foo - #{foo}"
end
```

You can specify different host and port like below

`redis_connect host: "177.11.22.33", port: 8801`

## Examples

To check more examples of Redis see [crystal-redis-example](https://github.com/stefanwille/crystal-redis-examples).

## Contributing

1. Fork it ( https://github.com/sdogruyol/kemal-redis/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [sdogruyol](https://github.com/sdogruyol) Sdogruyol - creator, maintainer

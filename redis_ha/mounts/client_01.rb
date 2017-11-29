require 'redis'
require 'pp'

redis = Redis.new(host: "172.20.0.2", port: 7000)

pp redis.set("mykey", "hello world")
pp redis.get("mykey")

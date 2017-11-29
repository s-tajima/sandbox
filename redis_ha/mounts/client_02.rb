require 'redis'
require 'pp'

redis = Redis.new(host: "172.255.255.1", port: 6379)

pp redis.set("mykey", "hello world")
pp redis.get("mykey")

require "redis"

macro redis
  env.request.redis.not_nil!
end

def redis_connect(host=nil, port=nil)
  Kemal.config.add_handler Kemal::Redis.new(host, port)
end

class HTTP::Request
  property redis
end

class Kemal::Redis < HTTP::Handler
  def initialize(host=nil, port=nil)
    @redis ||= ::Redis.new
  end

  def call(request)
    request.redis = @redis
    call_next(request)
  end
end

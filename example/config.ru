require 'rack-undefined'

use RackUndefined

run lambda{ |env|
    request = Rack::Request.new(env)
    [200, {}, [request.params.inspect]]
}

require 'funkify'
class RackUndefined < Struct.new(:app)
  include Funkify and auto_curry

  def call(env)
    request = Rack::Request.new(env)
    request.params.each do |key, value|
      request.update_param key, undefine(value)
    end
    app.call(env)
  end

  def undefine(obj)
    case obj
    when "null", "undefined"
      nil
    when Array
      obj.map(&undefine)
    when Hash
      Hash[obj.map(&undefine)]
    else
      obj
    end
  end
end

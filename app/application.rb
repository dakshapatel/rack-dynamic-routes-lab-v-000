require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)




    if req.path.match(/items/)
      binding.pry
      resp.write "#{items}.price"

      resp.write = 200

    else
      resp.write "Route not found"
      resp.status = 404
    end


    resp.finish
  end
end

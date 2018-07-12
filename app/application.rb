require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)




    if req.path.match(/items/)
      binding.pry
      item_name = req.path.split('/')[2]
      resp.write "#{Item.price}"

      resp.write = 200

    else
      resp.write "Route not found"
      resp.status = 404
    end


    resp.finish
  end
end

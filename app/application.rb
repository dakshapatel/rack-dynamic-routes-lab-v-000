require 'pry'
class Application

@@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)




    if req.path.match(/items/)
      binding.pry
      item_name = req.path.split('/')[2]
      item_found = @@items.find do |item|
        item.name == item_name
      end 
      if item_found.price
        resp.write 
      if item_name = Item.name
      resp.write "#{Item.price}"

      resp.write = 200

    else
      resp.write "Route not found"
      resp.status = 404
    end


    resp.finish
  end
end

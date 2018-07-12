class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items/name"
      resp.write Item.price

    else
      resp.write "Item not found"
      resp.status = 400
    end

    resp.finish
  end
end

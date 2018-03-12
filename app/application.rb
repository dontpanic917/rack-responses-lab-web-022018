class Application
  def call(env)
    resp = Rack::Response.new
    if Time.new.to_a[2] > 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    resp.finish
  end

end

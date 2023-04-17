require "grip"

class DemoController < Grip::Controllers::Http
  def get(context : Context)
    context
      .put_status(201)                                  # Put a response status code.
      .put_resp_header("Server", "TornadoServer/6.0.4") # Put a response header.
      .json(                                            # Respond with JSON encoded data.
{
        "message" => "Crystal Lang on Space!",
      }
      )
  end
end

class Application < Grip::Application
  def initialize
    super(environment: "development", serve_static: false)

    get "/", DemoController
  end

  def port : Int32
    # setup port
    p = ENV["PORT"] ||= "8080"
    p.to_i32
  end
end

app = Application.new
app.run

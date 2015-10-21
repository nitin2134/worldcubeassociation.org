class FixAcceptHeader
  def initialize(app)
    @app = app
  end

  def call(env)
    if env["HTTP_ACCEPT"] == "*/*;"
      env["HTTP_ACCEPT"] = "*/*"
    end

    @app.call(env)
  end
end
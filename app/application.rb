class Application
    def call(env)
        resp = Rack::Response.new

        if Time.now.hour < 12
            resp.write "Good Morning!\n"
        else
            resp.write "Good Afternoon!\n"
        end

        resp.write "It's #{Time.now}."

        resp.finish
    end
end
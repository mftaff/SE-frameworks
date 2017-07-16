require "test/unit"
require "rack/test"
require "./bloc_works"

class MainTest < Test::Unit::TestCase
    include Rack::Test::Methods

    def test_call
        app = BlocWorks::Application.new
        result = app.call(ENV['RACK_ENV'])
        puts "status: #{result.first}"
        puts "Content-Type: #{result[1]["Content-Type"]}"
        puts "Body: #{result.last.first}"
    end
end

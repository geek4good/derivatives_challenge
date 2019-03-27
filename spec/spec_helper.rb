root = File.expand_path("../..", __FILE__)
$LOAD_PATH.unshift(root) unless $LOAD_PATH.include?(root)

ENV["APP_ENV"] = "test"

require "derivatives"

require "rack/test"
require "rspec"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

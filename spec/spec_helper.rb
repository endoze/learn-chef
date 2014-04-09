require 'chefspec'
require 'chefspec/berkshelf'
require 'pry-remote'

LOG_LEVEL = :error

RSpec.configure do |config|
  config.filter_run :focus => true
  config.run_all_when_everything_filtered = true
  config.platform = 'ubuntu'
  config.version  = '12.04'
  config.log_level = :error
end

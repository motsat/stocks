# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Stocks::Application.initialize!
Time::DATE_FORMATS[:simple] = "%Y-%m-%d %H:%M:%S"

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Openfoodnetwork::Application.initialize!

ActiveRecord::Base.include_root_in_json = true

# Override disable_referential_integrity
require 'active_record_fk_hack'

source 'https://rubygems.org'
ruby "1.9.3"

gem 'rails', '3.2.14'

gem 'pg'
gem 'spree', :github => 'spree/spree', :branch => '2-0-stable' # TODO: lock on to next version (2.0.4)
gem 'spree_i18n', :github => 'spree/spree_i18n', :branch => '2-0-stable'
gem 'spree_paypal_express', :github => 'spree/spree_paypal_express', :branch => '2-0-stable'
gem 'spree_last_address', :github => 'eaterprises/spree-last-address', :tag => 'spree-2.0'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '2-0-stable'

gem 'comfortable_mexican_sofa'

# Fix bug in simple_form preventing collection_check_boxes usage within form_for block
# When merged, revert to upstream gem
gem 'simple_form', :github => 'RohanM/simple_form'

gem 'unicorn'
gem 'bugsnag'
gem 'newrelic_rpm'
gem 'haml'
gem 'sass'
gem 'aws-sdk'
gem 'db2fog'
gem 'andand'
gem 'truncate_html'
gem 'representative_view'
gem 'rabl'
gem 'oj'
gem 'chili', :github => 'eaterprises/chili'
gem 'deface', :github => 'spree/deface'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'

  gem 'turbo-sprockets-rails3'
end

gem 'jquery-rails'



group :test, :development do
  # Pretty printed test output
  gem 'turn', '~> 0.8.3', :require => false
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails', :require => false
  gem 'faker'
  gem 'capybara'
  gem 'database_cleaner', '0.7.1', :require => false
  gem 'simplecov', :require => false
  gem 'awesome_print'
  gem 'letter_opener'
  gem 'timecop'
  gem 'poltergeist'
end

group :chili do
  gem 'enterprises_distributor_info_rich_text_feature', path: 'lib/chili/enterprises_distributor_info_rich_text_feature'
  gem 'eaterprises_feature',    path: 'lib/chili/eaterprises_feature'
  gem 'local_organics_feature', path: 'lib/chili/local_organics_feature'
end

group :development do
  gem 'pry-debugger'
  gem 'debugger-linecache'  
  gem "rails-erd"
end

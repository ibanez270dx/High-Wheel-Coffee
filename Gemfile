source 'https://rubygems.org'

########################################
#  Core
########################################

# Rails
gem 'rails', '3.2.8'

# MySQL
gem 'mysql2'

# jQuery
gem 'jquery-rails'

########################################
#  Assets
########################################

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'twitter-bootstrap-rails'
end

########################################
#  Development 
########################################

group :development do
  # Use Thin instead of WEBrick, it's faster and has no warning
  gem 'thin'
end

########################################
#  Testing
########################################

group :test do
  # To use debugger
  # The "ruby-debug" gem is unmaintained, this "debugger" replacement seems to work.
  # "ruby-debug19" and "ruby-debug193" also don't work :)
  gem 'debugger', require: 'ruby-debug'

  # Change Time.now for testing purposes
  gem 'timecop'
end

########################################
#  APIs
########################################

# Facebook
gem 'koala'

########################################
#  Formats
########################################

# Markdown
gem 'redcarpet'

########################################
#  Convenience
########################################

# Image attachments
# Latest major version changes image paths without providing a nice upgrade path
# It's also a bit too new, let's wait a bit before switching
gem 'paperclip', '<3.0'

# Encryption
gem 'bcrypt-ruby', require: 'bcrypt'

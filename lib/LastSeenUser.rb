unless defined?(Devise)
 require 'devise'
end
require "LastSeenUser/version"

Devise.add_module :LastSeenUser, :model => 'LastSeenUser/model'
module LastSeenUser
  # Your code goes here...
end
require 'LastSeenUser/rails'
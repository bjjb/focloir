# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_focloir_session',
  :secret      => '74212d116540ede5e3132829ec29f8aadb9e9512010e1db6bd3089da13adc4bc4c0f9f6c7fd5de4aee61c0f159e5a9579b87ea2f6e41a97abf1b3872840ad004'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

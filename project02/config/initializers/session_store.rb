# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project02_session',
  :secret      => '7b3e5c156a48ce9b0bc591e04ff795bc4e9f36d98c262362be31ade3b6b55046c9d0d0f5c2c31d7c7da328d48949964162cfe989197a0ddcdeb808f3f1246740'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_project02_session',
  :secret      => '0127fe7f5e38860043a36260ac90d33bb5259f62e1c1219697e37335054066a0a51db0e6c1636302cd3d87cbf4ee8fd3bdb7a1f4dcd60c10387e238f63b6e1f5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store

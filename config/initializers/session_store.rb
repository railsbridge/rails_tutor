# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_railstutor_session',
  :secret      => '454ef27c31626f7ba1aa20fe25ff73ec1d4a2ec8576a82f7a4211d084091d6cd6c558948bb5bbdad22c1b1324130049315e63251527830232e4601ddffdca198'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

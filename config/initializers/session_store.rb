# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_article_session',
  :secret      => 'fe9931e43e21672e428b4231d7aed15800fb0637a3e7f5037ae12ca1fd5affc6c07777f24d46fe4446c635b5cd1c3bba313e39525a90634e36f3fbfd595a833f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_codename_spidermonkey_session',
  :secret      => '03f6a5d423bead2993d5356ed674828b615f114026e78e6131f5d72f5400cd35d1f8415493f8b0324c341a488c02816f07dea17141e89c89b20c22f74b8311d8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store

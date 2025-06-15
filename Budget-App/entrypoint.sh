#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f tmp/pids/server.pid

# Install gems if missing
bundle check || bundle install

# Install npm packages if missing
[ -d node_modules ] || npm install

# Run migrations without reset to preserve data
rails db:migrate

# Seed only if needed (optional)
rails db:seed

# Start Rails server
exec rails server -b 0.0.0.0


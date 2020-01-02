#!/bin/bash
set -e

# Update hostfiles so puma runs as expected https://github.com/puma/puma/issues/1022#issuecomment-513539150
cp /etc/hosts /etc/hosts2
sed -i 's/localhost ip6-localhost ip6-loopback/ip6-localhost ip6-loopback/g' /etc/hosts2
sed -i 's/::1  localhost/::1/g' /etc/hosts2
cat /etc/hosts2 > /etc/hosts

# Remove a potentially pre-existing server.pid for Rails.
rm -f /rails-template/tmp/pids/server.pid

# Install rubygems
bundle check || bundle install --jobs 20 --retry 5

# Install Yarn packages
$HOME/.yarn/bin/yarn install --pure-lockfile
yarn install --check-files

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

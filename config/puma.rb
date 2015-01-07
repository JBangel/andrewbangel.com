environment ENV['RAILS_ENV']

threads 0,16
workers 2

# It would be a good idea to abstract away the `/full/path/to/your/project` path to
# an ENV variable so that you don't have to mess around with your
# production deploy path directly in your config file.
pidfile ENV['APP_PATH'] << "/tmp/puma.pid"

if ENV['RAILS_ENV'] == 'production'
  bind "unix:///" << ENV['APP_PATH'] << "/tmp/puma.sock"
else
  port '3000'
end

prune_bundler

restart_command 'bundle exec bin/puma'

on_worker_boot do
  require 'active_record'
  config_path = File.expand_path('../database.yml', __FILE__)

  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || YAML.load_file(config_path)[ENV['RAILS_ENV']])
end

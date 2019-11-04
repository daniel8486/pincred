
set :application_name, 'pincred'
set :domain, 'pincred.com.br'
set :repo_url, 'git@github.com:daniel8486/pincred.git'
#set :branch, 'master'

set :deploy_to, '/var/www/pincred'

append :linked_files, "config/database.yml", "config/storage.yml"
append :linked_dirs, "log", "tmp"
 
set :keep_releases, 5
set :migration_role, :app

set :puma_pid, "#{shared_path}/tmp/pids/puma.pid"
set :puma_bind, "unix://#{shared_path}/tmp/sockets/puma.sock"
set :puma_access_log, "#{shared_path}/log/puma_access.log"
set :puma_error_log, "#{shared_path}/log/puma_error.log"
 
set :nginx_sites_available_path, "/etc/nginx/sites-available"
set :nginx_sites_enabled_path, "/etc/nginx/sites-enabled"
 
set :rvm_ruby_version, '2.6.1'

namespace :puma do
 desc 'Create Puma dirs'
   task :create_dirs do
   on roles(:app) do
    execute "mkdir #{shared_path}/tmp/sockets -p"
    execute "mkdir #{shared_path}/tmp/pids -p"
  end
end

 desc "Restart Nginx"
   task :nginx_restart do
   on roles(:app) do
   execute "sudo su service nginx restart"
 end
end

before :start, :create_dirs
after :start, :nginx_restart
end


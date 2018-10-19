# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, "test_ikitlab"
set :repo_url, "git@github.com:zismailov/test_ikitlab.git"
set :deploy_to, "/var/www/#{fetch(:application)}"

set :linked_files, fetch(:linked_files, []).push("config/database.yml")
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets public/uploads]

set :bundle_binstubs, -> { shared_path.join("bin") }
set :keep_releases, 3
namespace :deploy do
  %w[puma sidekiq].each do |service|
    namespace service do
      %w[status up down restart 2].each do |command|
        desc "#{command.capitalize} #{service}"
        task command do
          on roles(:app) do
            execute "sudo sv #{command} #{fetch(:application)}_#{service}"
          end
        end
      end
    end
  end
  after :finished, "puma:2"
  after :finished, "sidekiq"
end

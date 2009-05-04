set :application, "railstutor"
set :repository,  "git@papaya.larkware.com:railstutor.git"
set :user, "webadmin"
set :deploy_via, :copy
set :scm, :git

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
# set :deploy_to, "/Library/Rails/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion

role :web, "72.249.191.152"
role :app, "72.249.191.152"
role :db,  "72.249.191.152", :primary => true

set :keep_releases, 6
after "deploy:update", "deploy:cleanup"

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end

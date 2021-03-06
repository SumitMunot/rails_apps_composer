# Application template recipe for the rails_apps_composer. Change the recipe here:
# https://github.com/RailsApps/rails_apps_composer/blob/master/recipes/rails_devise.rb

if prefer :apps4, 'rails-devise'
  prefs[:authentication] = 'devise'
  prefs[:authorization] = false
  prefs[:better_errors] = true
  prefs[:deployment] = 'none'
  prefs[:git] = true
  prefs[:local_env_file] = false
  prefs[:pry] = false
  prefs[:quiet_assets] = true
  prefs[:pages] = 'users'
end

__END__

name: rails_devise
description: "rails-devise starter application"
author: RailsApps

requires: [core]
run_after: [git]
category: apps

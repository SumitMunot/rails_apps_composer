# Application template recipe for the rails_apps_composer. Change the recipe here:
# https://github.com/RailsApps/rails_apps_composer/blob/master/recipes/pages.rb

stage_three do
  say_wizard "recipe stage three"
  case prefs[:pages]
    when 'home'
      generate 'pages:home -f'
    when 'about'
      generate 'pages:about -f'
    when 'users'
      generate 'pages:users -f'
      generate 'pages:authorized -f' if prefer :authorization, 'pundit'
    when 'about+users'
      generate 'pages:about -f'
      generate 'pages:users -f'
      generate 'pages:authorized -f' if prefer :authorization, 'pundit'
  end
  generate 'layout:navigation -f'
  ### GIT ###
  git :add => '-A' if prefer :git, true
  git :commit => '-qm "rails_apps_composer: add pages"' if prefer :git, true
end

__END__

name: pages
description: "Add pages"
author: RailsApps

requires: [setup, gems, frontend]
run_after: [setup, gems, frontend]
category: mvc

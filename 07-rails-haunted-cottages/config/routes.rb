Rails.application.routes.draw do
  # this first route will load up the welcome page
  get '/', to: 'application#welcome'

  # add your routes here!
end

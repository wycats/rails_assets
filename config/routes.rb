Rails.application.routes.draw do
  match "/javascripts/*path" => "rails_assets/javascripts#index", :defaults => {:format => :js}
  match "/stylesheets/*path" => "rails_assets/stylesheets#index", :defaults => {:format => :css}
end

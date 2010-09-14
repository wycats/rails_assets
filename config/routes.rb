Rails.application.routes.draw do
  match "/javascripts/*path" => "rails_assets/javascripts#index", :defaults => {:format => :js}
end

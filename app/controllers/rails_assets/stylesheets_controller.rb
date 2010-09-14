require "time"

module RailsAssets
  class StylesheetsController < ActionController::Metal
    include ActionController::Rendering

    append_view_path Rails.root.join("app/assets/stylesheets")

    def controller_path
      "stylesheets"
    end

    def index
      headers["Cache-Control"] = "public"
      headers["Expires"]       = (Time.now + 60 * 60 * 24 * 365).utc.httpdate
      render :template => params[:path]
    end
  end
end


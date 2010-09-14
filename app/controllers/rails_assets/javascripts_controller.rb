require "time"

module RailsAssets
  class JavascriptsController < ActionController::Metal
    include ActionController::Rendering

    append_view_path Rails.root.join("app/assets/javascripts")

    def controller_path
      "javascripts"
    end

    def index
      headers["Cache-Control"] = "public"
      headers["Expires"]       = (Time.now + 60 * 60 * 24 * 365).utc.httpdate
      render :template => params[:path]
    end
  end
end

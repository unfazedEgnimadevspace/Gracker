class ErrorsController < ApplicationController
  def not_found
    render file: Rails.root.join("public", "404.html"), status: :not_found
  end
end

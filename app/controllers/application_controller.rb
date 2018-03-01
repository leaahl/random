class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end

def autocomplete
  render json: Article.search(params[:query], autocomplete: true, limit: 10).map(&:title)
end

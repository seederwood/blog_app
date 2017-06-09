class WelcomeController < ApplicationController
  def index
    @articles = Article.all.limit(3).order('created_at desc')
    @projects = Project.all.limit(3).order('created_at desc')
  end
end

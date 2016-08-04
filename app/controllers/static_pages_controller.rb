class StaticPagesController < ApplicationController
  def home
    @review = current_user.reviews.build if logged_in?
  end

  def about
  end

  def help
  end
end

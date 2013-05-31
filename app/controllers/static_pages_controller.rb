class StaticPagesController < ApplicationController
  def home
    @days = 10
  end

  def help
  end

  def about
  end

  def weather
    @weather = "sunny"
  end

  def contact
  end

end

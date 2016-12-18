class HomepageController < ApplicationController
  def home
    @locations = Location.all
  end
end

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @transparent_navbar = true
  end
end

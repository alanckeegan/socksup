class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home

    @footer_position_relative = true
  end
end

class EmployersController < ApplicationController
  # def new
  #   @employer = Employer.new
  # end

  # def create
  #   @employer = Employer.new(employer_params
  #   @employer.city = @employer.city.capitalize

  #   if @employer.save
  #     @current_user.employer = @employer
  #   end
  # end
  def show
    @employer = Employer.find(params[:id])
  end

  def new
    @employer = Employer.new
  end

  def create
    # @employer = Employer.new(name: params[:name], description: params[:description], address: params[address], city: params[:city])
    @employer = Employer.create!(employer_params)
    # we need `restaurant_id` to asssociate review with corresponding restaurant
    current_user.update!(employer: @employer )
    redirect_to user_path(current_user)
  end

  private
  def employer_params
    params.require(:employer).permit(:city, :address, :description, :name, :contact, :latitude, :longitude, :photo, :photo_cache)
  end

end

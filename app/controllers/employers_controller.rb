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

  private
  def employer_params
    params.require(:employer).permit(:city, :address, :description, :name, :latitude, :longitude)
  end

end

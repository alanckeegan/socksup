class EmployersController < ApplicationController
  def create
    # - make sure that the input of the city is capitalized when saved to the database so that the search comparision works!!!
  end

  def show
    @employer = Employer.find(params[:id])
  end
end

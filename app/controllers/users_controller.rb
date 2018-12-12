class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    if @user.employer_id
      @inbound_submissions = []
      @user.employer.listings.each do |l|
        l.submissions.each do |s|
          @inbound_submissions.push(s)
        end
      end
      @inbound_submissions = @inbound_submissions.sort_by{|x| x.created_at}.reverse
    end
  end


end

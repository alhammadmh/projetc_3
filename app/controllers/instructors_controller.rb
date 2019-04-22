class InstructorsController < ApplicationController
  #before_action :authenticate_user!

  def index
    @instructors=Instructor.all 
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  
end

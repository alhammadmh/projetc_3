class InstructorsController < ApplicationController
  #before_action :authenticate_user!

  def index
    @instructors=Instructor.all 
  end

  def show
    # @instructor = Instructor.find(current_user.id)
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end
   
  def create
    @instructor = Instructor.create(instructor_params)
   
    if @instructor.save
      redirect_to @instructor
    # else
    #   render 'new'
    end
  end
   
  private
    def instructor_params
      params.require(:instructor).permit(:name)
    end
  
end

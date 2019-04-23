class CoursesController < ApplicationController
  def index
    @courses = Course.all
   
  end

  def show
    @course = Course.find(params[:id])
  end

  def new 
    @course = Course.new
  end

  def create
    # current_user.courses.create
    course= Course.create(course_params)
    redirect_to courses_path
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    # current_user.courses.create
    course = Course.find(params[:id])
    course << current_user
    course.update(course_params) 
    redirect_to course
  end

  def destroy
    course = Course.find(params[:id])
    course.destroy
    redirect_to courses_path
  end

  private

  def course_params
  params.require(:course).permit(:name, :field, :start, :end, :img, :desc, :instructor_id)

  end
end

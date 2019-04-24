class CoursesController < ApplicationController
  def index
    @courses = Course.search(params[:search])
  end

  def show
      @course = Course.find(params[:id])
  end

  def new 
    @course = Course.new
  end

  def create
    
    if current_user.user_type
      @course = Course.create(course_params)
      @course.instructor_id = current_user.id  
      @course.save
      redirect_to  @course
    else
      redirect_to  user_path(current_user)
    end
    
    
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    course = Course.find(params[:id])
    course.update(course_params) 
    redirect_to course
  end

  def add_student
    @course = Course.find(params[:id])

    unless current_user.user_type 
      @course.students << current_user.id
      @course.save
      redirect_to courses_path
    else
      redirect_to courses_path
    end
    
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

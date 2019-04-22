class StudentsController < ApplicationController
  def index
    @students=Student.all
    @courses = Course.all

  end

  
  def show
    @student = Student.find(current_user.id)
  end
end

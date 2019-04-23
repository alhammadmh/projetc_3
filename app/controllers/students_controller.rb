class StudentsController < ApplicationController
  def index
    @students=Student.all

  end

  
  def show
    # @student = Student.find(current_user.id)
    @student = Student.find(params[:id])

  end
end

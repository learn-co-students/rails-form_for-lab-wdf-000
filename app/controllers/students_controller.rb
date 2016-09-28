class StudentsController < ApplicationController


  def new
    @student = Student.new
  end


  def show
    @student = Student.find(params[:id])
  end

  def create

    @student = Student.create(student_params(:first_name, :last_name))
    redirect_to student_path(@student)
  end


  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:last_name, :first_name))
    redirect_to student_path(@student)


  end


  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end


  #params.require is requiring my class student in a singular form and .permit(*arg) permits the arguments (params attibutes)












end

class StudentsController < ApplicationController


  def new
    @student = Student.new
  end

  def show
    @student = Student.find_by_id(params[:id])
  end

  def create
    # binding.pry
    @student = Student.create(params[:student])
    redirect_to student_url(@student)
  end


  def create
    # binding.pry
    # binding.pry

    @student = Student.new

    @student[:first_name] = params[:student][:first_name]
    @student[:last_name] = params[:student][:last_name]
    @student.save
    # binding.pry

    redirect_to student_path(@student)
    # redirect_to new_school_class_path(@class)
    # redirect_to school_classes_url(@class)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(params.require(:student).permit(:first_name, :last_name))
    redirect_to student_path(@student)
  end

end

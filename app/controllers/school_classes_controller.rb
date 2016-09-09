class SchoolClassesController < ApplicationController

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end


  def create
    # binding.pry
    # binding.pry

    @school_class = SchoolClass.new

    @school_class[:title] = params[:school_class][:title]
    @school_class[:room_number] = params[:school_class][:room_number]
    @school_class.save
    # binding.pry

    redirect_to school_class_path(@school_class)
    # redirect_to new_school_class_path(@class)
    # redirect_to school_classes_url(@class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params.require(:school_class).permit(:title, :room_number))
    redirect_to school_class_path(@school_class)
  end



end

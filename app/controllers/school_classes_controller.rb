class SchoolClassesController < ApplicationController
  
  
  def index
    @school_classes = SchoolClass.all
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new(strong_params)
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(strong_params)
    redirect_to school_class_path(@school_class) 
  end

#STRONG PARAMS
  private
    
    def strong_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
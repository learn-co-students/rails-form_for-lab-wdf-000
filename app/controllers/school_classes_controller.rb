class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.create(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(params[:school_class])
    redirect_to school_class_path(@school_class)
  end

  #
  # def sc_params(*args)
  #   params.require(:school_class).permit(*args)
  # end

end

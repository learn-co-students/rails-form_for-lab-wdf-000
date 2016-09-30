class SchoolClassesController < ActionController::Base

  def index
    @SchoolClasses = SchoolClass.all
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def new
    @schoolclass = SchoolClass.new
  end

  def create
    @schoolclass = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end

  def update
    @schoolclass = SchoolClass.find(params[:id])
    @schoolclass.update(params.require(:school_class).permit(:title))
    redirect_to school_class_path(@schoolclass)
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  private

  def post_params(*args)
    params.require(:post).permit(*args)
  end

end

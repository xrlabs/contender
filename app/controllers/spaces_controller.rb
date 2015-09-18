class SpacesController < ApplicationController
  def new
    @space = Space.new
  end

  def create
    @space = Space.create(space_params)

    if @space.save
      redirect_to @space
    else
      render :new
    end
  end

  def show
    @space = Space.find(params[:id])
  end

  def edit
    @space = Space.find(params[:id])
  end

  def index
    @spaces = Space.all
  end

  def update
  end

  def destroy
  end

  private
    def space_params
      params.require(:space).permit(:name)
    end
end

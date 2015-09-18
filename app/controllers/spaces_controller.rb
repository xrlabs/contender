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
  end

  def edit
  end

  def index
  end

  def update
  end

  def destroy
  end

  private
    def space_params
      params.permit(:space).permit(:name)
    end
end

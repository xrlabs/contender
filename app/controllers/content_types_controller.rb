class ContentTypesController < ApplicationController
    def new
        @space = Space.find(params[:space_id])
        @content_type = ContentType.new(space_id: @space.id)
    end

    def create
        @space = Space.find(params[:space_id])
        @content_type = @space.content_types.build(content_type_params)

        if @content_type.save
            redirect_to @content_type.space
        else
            render :new
        end
    end

    def show
        @space = Space.find(params[:space_id])
        @content_type = ContentType.find(params[:id])
        @entries = @content_type.entry.all
    end

    def index
        @content_type = ContentType.all
    end

    def update
    end

    def destroy
    end

    private
        def content_type_params
            params.require(:content_type).permit(:name)
        end
end

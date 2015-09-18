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

    def edit
        @content_type = ContentType.find(params[:id])
    end

    def update
        @content_type = ContentType.find(params[:id])

        if @content_type.update(content_type_update_params)
            redirect_to space_content_type_path(@content_type.space.id, @content_type.id)
        else
            render :edit
        end
    end

    def destroy
    end

    private
        def content_type_params
            params.require(:content_type).permit(:name, :fields)
        end

        def content_type_update_params
            params.require(:content_type).permit(:name, :fields)
        end
end

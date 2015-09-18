class ContentTypeController < ApplicationController
    def new
        @content_type = ContentType.new
    end

    def create
        @content_type = ContentType.new(params[:content_type])
    end

    def show
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
end

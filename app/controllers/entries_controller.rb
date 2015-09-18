class EntriesController < ApplicationController
    def new
        @content_type = ContentType.find(params[:content_type_id])

        # Create Fields based on Content Type's fields attribute
        # This will need to use JSON::decode later on.
        # @fields = ActiveSupport::JSON.decode(@content_type.fields || ActiveSupport::JSON.encode('{ { "name": "name", "type": "text" }, { "name": "password", "type": "text" } }'))
        # @hash = { fields: [{name: 'name', type: 'text'}, {name: 'password', type: 'text'}] }
        # @json = ActiveSupport::JSON.encode(@hash)
        # @fields = ActiveSupport::JSON.decode(@json)
        @entry = Entry.new
    end

    def create
        @content_type = ContentType.find(params[:content_type_id])
        # Create an Entry by building one via the @content_type's methods
        @entry = @content_type.entries.build(name: entry_params[:name], fields: ActiveSupport::JSON.encode(entry_params[:fields]))

        if @entry.save
            redirect_to show_space_content_type_entry(space_id: @entry.content_type.space.id, content_type_id: @entry.content_type.id, id: @entry.id)
        else
            render :new
        end
    end

    def index
        @entries = Entry.all
    end

    def show
        @entry = Entry.find(params[:id])
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private
        def entry_params
            params.require(:entry).permit(:name, :fields)
        end
end

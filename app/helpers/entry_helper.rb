module EntryHelper

    # This methods turns the JSON strings into real HTML Input Elements
    # Expects a hash containing a Name and a Field Type, e.g. 'select' or 'text'
    def field_transform(name, field_type)
        case field_type
            when 'text'
                text_field_tag name
            when 'textbox'
                text_area_tag name
            when 'password'
                password_field name
            when 'email'
                email_field name
            when 'select'
                "not yet implemented"
            else
                puts "LOL"
        end
    end
end

module ApplicationHelper
    def current_space
        Space.last || Space.new
    end

    def link_back(text = 'back', css: 'pure-button')
        link_to text, :back, class: css
    end
end

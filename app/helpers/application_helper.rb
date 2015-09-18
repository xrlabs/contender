module ApplicationHelper
    def current_space
        Space.last || Space.new
    end
end

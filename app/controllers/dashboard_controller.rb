class DashboardController < ApplicationController
  def index
    @spaces = Space.all
    @entries = Entry.all
  end
end

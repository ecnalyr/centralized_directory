class VisitorsController < ApplicationController
  def index
    @websites = Website.all
  end
end

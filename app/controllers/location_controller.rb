class LocationController < ApplicationController
  def new
  end

  def create
  end

  #def update
  #end

  # def edit
  # end

  # def destroy
  # end

   def index
    @surveys = Survey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surveys }
    end
  end
end

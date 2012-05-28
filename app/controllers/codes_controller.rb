class CodesController < ApplicationController
  def index
	@codes = Code.all
  end

  def show
 	@code = Code.find(params[:id])
  end

  def new
	@code = Code.new
  end

  def create
	@code = Code.new(params[:code])
	if @code.save
		redirect_to @code
	else
		redirect_to codes_path
	end
  end

  def edit
	@code = Code.find(params[:id])
  end

  def update
	@code = Code.find(params[id])
	if @code.update_attributes(params[:code])
		redirect_to @code
	else
		render :edit
	end
  end

  def destroy
	Task.find(params[:id].try(:delete))
	redirect_to codes_path
  end
end

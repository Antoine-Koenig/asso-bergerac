class SocietiesController < ApplicationController

  def index
    @societies = Society.all
  end

  def show
    @society = Society.find(params[:id])
  end

  def new
    @society = Society.new
  end

  def create
    @society = Society.new(society_params)
    @society.user_id = current_user[:id]

    if @society.save
      redirect_to societies_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def society_params
    params.require(:society).permit(:name, :address, :phone_number, :url)
  end

end

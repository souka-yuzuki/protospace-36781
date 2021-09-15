class PrototypesController < ApplicationController
  def index
    
  end

  def new
    @prototype = Prototype.new
  end

  def create
    Prototype.create(prototyp_params)
    if prototype.create(prototyp_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def prototyp_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end

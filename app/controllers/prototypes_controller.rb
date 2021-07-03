class PrototypesController < ApplicationController
  def index
  end

  def new
    @prototype = Prototype.new
  end

  def create
     @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to  root_path
    else
      render :new
    end
  end
    # prototype.create(prototypes_params)
  

 
    

private
  def prototype_params
    params.require(:prototype).permit(:image, :concept,:catch_copy,:title).merge(user_id: current_user.id)
  end

end
  

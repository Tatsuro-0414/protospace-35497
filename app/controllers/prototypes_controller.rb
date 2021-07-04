class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
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


  def show
    @prototype = Prototype.find(params[:id])
  end

  def destroy
    @prototype = Prototype.find(params[:id])
    @prototype.destroy
    redirect_to  root_path
  end


  def edit
    @prototype= Prototype.find(params[:id])



  end

  def update
    @prototype = Prototype.find(params[:id])
    if@prototype.update(prototype_params)
      redirect_to prototype_path
    else
      render :edit
    end

  end

    # prototype.create(prototypes_params)
  

 
    

private
  def prototype_params
    params.require(:prototype).permit(:image, :concept,:catch_copy,:title).merge(user_id: current_user.id)
  end

end
  

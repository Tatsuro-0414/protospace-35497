class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
   
    if @comment.save
      redirect_to prototype_path(@comment.prototype)
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"   #"別のコントローラーのアクションを指定するから、記述がコントローラ/show"

  end
     end
      

def show
  @comment = Comment.new(comment_params)
  
end

private
def comment_params
  params.require(:comment).permit(:text).merge(user_id: current_user.id, prototype_id: params[:prototype_id])
end

end

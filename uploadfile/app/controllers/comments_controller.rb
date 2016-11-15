class CommentsController < ApplicationController
	  def create
                @film = Film.find(params[:film_id])
                @comment = @film.comments.create!(params.require(:comment).permit!) 
                redirect_to @film
        end
end

class AuthorsController < ApplicationController

  def index
    @authors = Author.all
  end

  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      redirect_to author_path(@author)
    else
      render :new
  end

  def edit
    @author = Author.find(params [:id])
  end

  def update
    @author = Author.find(params [:id])
    if @author.update(author_params)
      redirect_to author_path(@author)
    else
      redirect_to author_edit_path(@author)
    end
  end

  def destroy
    @author = Author.find(params[:id])
    @author.delete
    redirect_to author_path
  end


  private
    def author_params
      params.require(:author).permit(:name, :university, :coAuthors)
    end
  end

end
end

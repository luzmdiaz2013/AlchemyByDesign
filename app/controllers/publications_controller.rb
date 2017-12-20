class PublicationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]


  def index
    @publications = Publication.all
  end

  def show
    puts "--- inside publication controller SHOW #{params[:id]} --- "
    @publication = Publication.find(params[:id])
  end

  def new
    @publication = current_user.publications.build
  end

  def create
    @publication = current_user.publications.build(publication_params)
    if @publication.save
      redirect_to publications_path(@publication)
    else
      render :new
    end
  end

  def edit
    puts "<< --- inside publication controller EDIT #{params[:id]} -- #{publication_params}--- "
    puts " --- #{publication_params} --- "
    @publication = Publication.find(params[:id])
    puts @publication
  end

  def update
    @publication = Publication.find(params[:id])
    if @publication.update(publication_params)
      redirect_to edit_publication_path(@publication)
    else
      redirect_to publication_path(@publication)
    end
  end

  def destroy
    puts "--- inside destroy controller #{params[:id]}"
    @publication = Publication.find(params[:id])
    @publication.delete
    redirect_to publications_path
  end


  private

  def publication_params
    params.require(:publication).permit(
      :title,
      :university,
      :coAuthors)
  end

end

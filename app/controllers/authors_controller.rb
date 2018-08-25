class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    if Author.create!(author_params).valid?
      redirect_to author_path(@author)
    else 
      render "new"
    end 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end

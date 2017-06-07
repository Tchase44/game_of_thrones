class CharactersController < ApplicationController
  def index
    @people = Character.all
  end

  def create
  end
  
  def new
  end

  def edit
  end

  def show
    @person = Character.find(params[:id])
  end

  def update
  end

  def destroy
  end

end

class CharactersController < ApplicationController
  def all
    @people = Character.all.order(:house_id)
  end

  def index
    @people = Character.all
    @house = House.find(params[:house_id])
  end

  def create
    @house = House.find(params[:house_id])
    @person = @house.characters.new(char_params.merge(user: current_user))
    if @person.save
      flash[:notice] = "#{@person.name} added to House #{@house.name}"
      redirect_to house_path(@house)
    else
      flash[:alert] = "Could not create character"
      redirect_to house_path(@house)
    end
  end
  
  def new
    @house = House.find(params[:house_id])
    @person = Character.new
  end

  def show
    @person = Character.find(params[:id])
    @house = House.find(params[:house_id])
  end

  def edit
    @person = Character.find(params[:id])
    @house = House.find(params[:house_id])
  end

  def update
    @house = House.find(params[:house_id])
    @person = @house.characters.find(params[:id])
    if @person.update(char_params)
      flash[:notice] = "#{@person.name} updated"
      redirect_to house_character_path(@house,@person)
    else
      flash[:alert] = "That person did NOT update"
      redirect_to house_path(@house)
    end
  end

  def destroy
    @house = House.find(params[:house_id])
    @person = @house.characters.find(params[:id])
    if @person.user == current_user
      @person.destroy
      flash[:notice] = "And now their watch has ended"
      redirect_to house_path(@house)
    else
      flash[:alert] = "Hmm...Hard to kill this one is"
      redirect_to house_path(@house)
    end
  end

  private
    def char_params
      params.require(:character).permit(:name,:title,:img_url)
    end

end

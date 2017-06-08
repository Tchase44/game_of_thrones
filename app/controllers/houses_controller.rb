class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def create
    @house = Houses.new(house_params.merge(user: current_user))
    if @house.save
      flash[notice] = "House #{@house.name} Founded!"
      redirect_to house_path(@house)
    else
      flash[:alert] = "New house did not save"
    end
  end
  
  def new
    @house = House.new
  end

  def show
    @house = House.find(params[:id])
  end

  def edit
    @house = House.find(params[:id])
  end

  def update
    @house = House.find(params[:id])
    # if @house.user == current_user
      if @house.update(house_params)
        flash[notice] = "House #{@house.name} updated"
        redirect_to house_path(@house)
      else
        flash[:alert] = "House did NOT update"
      end
    # else
    #   flash[:alert] = "Only the creator of this house can modify it"
      redirect_to house_path(@house)
    # end
  end

  def destroy
    @house = House.find(params[:id])
    if @house.user == current_user
      if @house.destroy
        flash[:notice] = "The house was Eliminated"
        redirect_to root_path
      else
        flash[:alert] = "This house is resilant...did not delete"
      end
    else
      flash[:alert] = "Only the creator of this house can destroy it"
      redirect_to house_path(@house)
    end
  end

  private
    def house_params
      params.require(:house).permit(:name,:words,:sigil_url,:castle)
    end

end

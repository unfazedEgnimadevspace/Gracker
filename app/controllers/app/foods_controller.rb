class App::FoodsController < App::BaseController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  def index
    @foods = current_user.foods.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @food = current_user.foods.build
  end

  def create
    @food = current_user.foods.build(food_params)
    if @food.save
      flash[:notice] = "New food recorded sucessfully"
      redirect_to app_food_path(@food)
    else  
      render :new
    end
  end
  
  def edit
  end

  def update 
    if @food.update(food_params)
      flash[:notice] = "Record sucessfully updated"
      redirect_to app_food_path(@food)
    else  
      render :edit
    end
  end

  def destroy
    @food.destroy
    flash[:alert] = "Record sucessfully deleted"
    redirect_to app_foods_path
  end


  private 
  
  def set_food 
    @food = current_user.foods.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:user_id, :name, :consumed_at, :meal_type, :calories, :notes)
  end
end

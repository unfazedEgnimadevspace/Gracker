class App::CaloriesController < ApplicationController
  before_action :check_current_user
  before_action :set_calorie, only: [:show, :edit, :update, :destroy]
  def index
    @calories = current_user.calories.paginate(page: params[:page], per_page: 10)
  end

  def show
  end

  def new
    @calorie = current_user.calories.build
  end

  def create
    @calorie = current_user.calories.build(calorie_params)
    if @calorie.save
      flash[:notice] = "New calorie recorded sucessfully"
      redirect_to app_calorie_path(@calorie)
    else  
      render :new
    end
  end
  
  def edit
  end

  def update 
    if @calorie.update(calorie_params)
      flash[:notice] = "Record sucessfully updated"
      redirect_to app_calorie_path(@calorie)
    else  
      render :edit
    end
  end

  def destroy
    @calorie.destroy
    flash[:alert] = "Record sucessfully deleted"
    redirect_to app_calories_path
  end



  private 

  def check_current_user
    if current_user == nil  
      flash[:alert] = "You have to be logged in first"
      redirect_to new_user_session_url
    end 
  end
  
  def set_calorie 
    @calorie = current_user.calories.find(params[:id])
  end

  def calorie_params
    params.require(:calorie).permit(:user_id, :food_name, :consumed_at, :meal_type, :calories, :notes)
  end
end

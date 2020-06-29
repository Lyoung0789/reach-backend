class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all 
        render json: goals
    end 

    def show
        goal = Goal.all.find_by(id: params[:id])
        render json: goal
    end 

    # def create
    # end 

    # def update
    # end 

    # def destroy
    # end 


    private 
    def goal_params
        params.require(:goal).permit(:title, :category, :description, :completed, :imageurl)
    end 

end

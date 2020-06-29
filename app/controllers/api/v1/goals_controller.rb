class Api::V1::GoalsController < ApplicationController

    def index
        goals = Goal.all 
        render json: goals
    end 

    def show
        goal = Goal.all.find_by(id: params[:id])
        render json: goal
    end 

    def create
        goal = Goal.new(goal_params)
        if goal.save
            render json: goal
        else 
            render :json => { :error => goal.errors } 
        end 
    end 

    # def update
    # end 

    def destroy
        goal = Goal.all.find_by(id: params[:id])
        goal.destroy
    end 


    private 
    def goal_params
        params.require(:goal).permit(:title, :category, :description, :completed, :imageurl)
    end 

end

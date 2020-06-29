class Api::V1::GoalsController < ApplicationController

    def index
    end 

    def show
    end 

    def create
    end 

    def update
    end 

    def destroy
    end 


    private 
    def goal_params
        params.require(:goal).permit(:title, :category, :description, :completed, :imageurl)
    end 

end

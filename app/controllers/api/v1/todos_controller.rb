class Api::V1::TodosController < ApplicationController

    def index
        todo = Todo.all 
        render json: todo
    end 

    def show
        todo = Todo.all.find_by(id: params[:id])
        render json: todo
    end 

    def create
        todo = Todo.new(todo_params)
        if todo.save
            render json: todo
        else 
            render :json => { :error => todo.errors } 
        end 
    end 

    # def update
    # end 

    def destroy
        todo = Todo.all.find_by(id: params[:id])
        todo.destroy
    end 


    private 
    def todo_params
        params.require(:todo).permit(:title, :description, :completed, :goal_id)
    end 
end

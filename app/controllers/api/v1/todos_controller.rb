class Api::V1::TodosController < ApplicationController

    def index
        find_goal
        todos = @goal.todos
        render json: todos
    end 

    def show
        find_goal 
        todo = @goal.todos.find_by(id: params[:id])
        render json: todo
    end 

    def create
        # send to front end the whole goal. since we setup the todo as part of the goal. 
        find_goal
        todo = @goal.todos.build(todo_params)
        if todo.save
            render json: @goal
        else 
            render :json => { :error => todo.errors } 
        end 
    end 

    def update
        
        find_goal
        todo = Todo.all.find_by(id: params[:id])
        

        if todo.update(completed: params[:completed])
            render json: @goal
        else 
            render :json => {:error => todo.errors}
        end 

        
    end 

    def destroy
        todo = Todo.all.find_by(id: params[:id])
        todo.destroy
    end 


    private 
    def todo_params
        params.require(:todo).permit(:title, :description, :completed, :goal_id)
    end 

    def find_goal
        @goal = Goal.all.find_by(id: params[:goal_id])
    end 
end

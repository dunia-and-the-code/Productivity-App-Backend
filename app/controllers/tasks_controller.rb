class TasksController < ApplicationController


    def index

        tasks = Task.all
        render json: tasks
    end

    
    def show

        task = Task.find_by(id: params[:id])
        if task != nil
            render json: task, except: [:user_id, :created_at, :updated_at]
        else
            render json: { error: 'Task not found' }, status: 404
        end
    end


    def create

        task = Task.new(user_id: params[:user_id], description: params[:description])

        if task.save
            task.save
            render json: task
        else
            render json: {error: 'Task not saved'}, status: 400
        end
    end


    def destroy

        task = Task.find(params[:id])
        task.delete
        render json: task

    end
    

end

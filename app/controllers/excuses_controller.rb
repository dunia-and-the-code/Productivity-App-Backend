class ExcusesController < ApplicationController

    def index
        excuses = Excuse.all
        render json: excuses
    end

    def show
        excuse = Excuse.find_by(id: params[:id])
        if excuse != nil
            render json: excuse, except: [:user_id]
        else
            render json: { error: 'Excuse not found' }, status: 404
        end
    end

end

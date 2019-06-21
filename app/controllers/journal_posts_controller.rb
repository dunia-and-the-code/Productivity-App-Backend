class JournalPostsController < ApplicationController

    def index
        journalPosts = JournalPost.all
        render json: journalPosts
    end

    def show
        journalPost = JournalPost.find_by(id: params[:id])
        if journalPost != nil
            render json: journalPost, except: [:user_id]
        else
            render json: { error: 'Journal post not found' }, status: 404
        end
    end

    def create

        journalPost = JournalPost.new(user_id: params[:user_id], description: params[:description])

        if journalPost.save
            journalPost.save
            render json: journalPost
        else
            render json: {error: 'Journal post not saved'}, status: 400
        end
    end


    def update 

        journalPost = JournalPost.find_by(id: params[:id])
        
        journalPost.update(description: params[:description])

        if journalPost.save 
            
            render json: journalPost
        else
            render json: { error: 'Couldnt update journal post' }, status: 404
        end
    end 

end

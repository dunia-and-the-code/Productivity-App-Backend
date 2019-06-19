class JournalPostsController < ApplicationController

    def index
        journalPosts = Journal_post.all
        render json: journalPosts
    end

    def show
        journalPost = Journalpost.find_by(id: params[:id])
        if journalPost != nil
            render json: journalPost, except: [:user_id]
        else
            render json: { error: 'Journal post not found' }, status: 404
        end
    end

end

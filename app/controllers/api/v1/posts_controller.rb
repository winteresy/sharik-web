class Api::V1::PostsController < ApplicationController
    before_action :set_post, only: [:show, :edit, :update, :destroy]
    def index
        @posts = Post.all
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
        def set_post
            @post = Post.find(params[:id])
        end
end

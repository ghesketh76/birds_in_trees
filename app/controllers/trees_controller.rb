class TreesController < ApplicationController

    def index 
        @trees = Tree.all 
        render json: @trees, include: :bird
    end

    def show 
        @tree = Tree.find(params[:id])
        render json: @tree, include: :bird
    end

    def create 
        @tree = Tree.create(variety: params[:variety], bird_id: params[:bird.id])  #this isnt working, what the hell
        render json: @tree
    end

    def update 
        @tree = Tree.find(params[:id])
        @tree.update(variety: params[:variety], bird: params[:bird])
        render json: @tree
    end

    def destroy 
        @tree = Tree.find(params[:id])
        @tree.destroy
    end
end

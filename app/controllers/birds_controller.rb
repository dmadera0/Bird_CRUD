class BirdsController < ApplicationController
    def index
        @birds = Bird.all

        render json: @birds
    end

    def show
        @bird = Bird.find(params[:id])
    end

    def create
        @bird = Bird.create({
            name: params[:name],
            color: params[:color]
        })
        render json: @bird
    end
    
    def update
        @bird = Bird.find(params[:id])

        @bird.update(name: params[:name])

        render json: @bird
    end

    def destroy
        @bird = Bird.find(params[:id])

        @bird.destroy

        render json: @bird
    end

end
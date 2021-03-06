class Api::ReviewsController < ApplicationController

    def show
        @reviews = Review.all.includes(:user).where(location_id: params[:id])
        render 'api/reviews/show'
    end
    
    def create
        @review = Review.new(review_params)
        if @review.save
            render json: {
                id: @review.id, body: @review.body, 
                f_name: @review.user.f_name, 
                l_name: @review.user.l_name,
                author_id: @review.author_id,
                user_photo: url_for(@review.user.photo)
            }
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    def update
        @review = Review.find_by(id: review_params[:id])
        if @review && @review.update(review_params)
            render json: {
                id: @review.id, body: @review.body, 
                f_name: @review.user.f_name, 
                l_name: @review.user.l_name,
                author_id: @review.author_id,
                user_photo: url_for(@review.user.photo)
            }
        else
            render json: ["FAIL"]
        end
    end

    def destroy
        @review = Review.find_by(id: params[:id])
        if @review.destroy!
            render json: ["deleted"]
        else
            render json: @review.errors.full_messages, status: 422
        end
    end

    def review_params
        params.require(:review).permit(:id, :body, :author_id, :location_id)
    end
end
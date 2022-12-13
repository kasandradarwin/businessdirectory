class LikesController < ApplicationController
    before_action :authenticate_user!, only: [:create, :destroy]

    def create
        @business = Business.find params[:business_id]
        @like = Like.new(business: @business, user: current_user)

        if can?(:like, @business)
            if @like.save
                flash.notice = "Business liked"
            else
                flash.alert = @like.errors.full_messages.join(", ")
            end
        else
            flash.alert = "You cannot like this business!"
        end
        redirect_to business_path(@business)
    end

    def destroy
       @like = current_user.likes.find params[:id]

       if !can?(:destroy, @like)
        flash[:warning] = "You cannot destroy a like you don't own!"
       elsif @like.destroy
        flash[:success] = "Business Unliked"
       else
        flash[:warning] = "Couldn't Unlike the business..."
       end
       redirect_to business_path(@like.business)
    end
end

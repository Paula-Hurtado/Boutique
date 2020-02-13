class WishListItemsController < ApplicationController
    before_action :find_outfit

    def create
        WishListItem.create(outfit: @outfit, user: current_user)

        redirect_to outfit_path(@outfit)
        flash[:notice]= "Add to wish list"
    end 

    private
    def find_outfit
        @outfit = Outfit.find(params[:outfit_id])
    end 
end
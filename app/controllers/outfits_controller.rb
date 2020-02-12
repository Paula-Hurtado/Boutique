class OutfitsController < ApplicationController 
    def index
        @outfits = Outfit.all 
    end 

    def new
        @outfit = Outfit.new
    end 

    def create
        @outfit = Outfit.new(outfit_params)
        @outfit.user_id = current_user.id
         if @outfit.save
            redirect_to @outfit 
            flash[:notice] = " New item added!"
         else 
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Item creation failed"
         end
    end 

    def show 
        @outfit = Outfit.find(params[:id])
    end 

    def destroy
        outfit = Outfit.find(params[:id])
        if current_user == outfit.user
            outfit.destroy
            redirect_to "/outfits"
            flash[:notice] = "Item destroyed"
        else 
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not authorized to delete item"
        end 
    end 

    def update 
        outfit = Outfit.find(params[:id])
        if current_user == outfit.user
            outfit = Outfit.find(params[:id])
            outfit.update(outfit_params)
            redirect_to "/outfits" 
            flash[:notice] = "Update successful!"
        else 
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not authorized to edit item"
        end 
    end 

    def edit 
        @outfit = Outfit.find(params[:id])
        if current_user != @outfit.user
            redirect_back(fallback_location: root_path)
            flash[:alert] = "Not authorized to edit item"
        end 
    end 

    private 
    def outfit_params
        params.require(:outfit).permit(:size, :brand, :picture, :color, :price)
    end
    def edit_params
        params.require(:outfit).permit(:size, :price, :color)
    end
end 
class StoreController < ApplicationController
def add_to_cart
    outfit = outfit.find(params[:id])
    @cart = find_cart
    @cart.add_outfit(outfit)
    redirect_to(:action => 'display_cart')
end

def display_cart
    @cart = find_cart
    @items = @cart.items
end

private
def find_cart
session[:cart] ||= Cart.new
end
end 
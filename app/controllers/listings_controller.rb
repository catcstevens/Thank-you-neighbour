  class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :set_conditions, only: [:new, :edit]
    def index
        @listings = Listing.all
    end

    def show
        
    end

    def new
        @listing = Listing.new
    end

    def create
        @listing = Listing.create(listing_params)
        	console
        if @listing.errors.any?
            render "new"
        else
            redirect_to listings_path
        end

    end

    def edit
        
    end

    def update
        
        
        if @listing.update(listing_params)
            redirect_to @listing
        else
            render 'edit'
        end
    end

    def destroy
        
        
        @listing.destroy
 
        redirect_to listings_path
    end

    private

    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end
    def set_conditions
        @condition = Condition.conditions.keys
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :price, :deposit, :from, :to, :delivery, :min_rental, :condition_id, :neighbour_id, :photo_id)
    end

end
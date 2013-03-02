class StoreController < ApplicationController
  def index
  	@products = Product.order(:title)
  	
  	#increment the number of times a user visits the store
  	@store_count = increment_store_count
  end
end

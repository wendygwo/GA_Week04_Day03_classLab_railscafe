class BeveragesController < ApplicationController
		def index
			@beverages = Beverage.all
		end

		def new
			@beverage = Beverage.new
		end

		def create
			@beverage = Beverage.create(params.require(:beverage).permit(:bev_type, :price, :quantity, :roast, :brew, :expiration_date, :combo_id)) #params.require came in rails 4. This whitelists fields and tells you which fields can be changed via the form
			if @beverage.save #if everything goes smoothly with saving
					redirect_to beverages_path #we know it's called beverages_path based on typing in 'rake routes' and figuring out the prefix for the index view
			else 		#goes here if it's not successful
				render 'new' #this is a partial. don't worry about what this is yet. WE haven't talked about it much yet. This tells you to go back to the new view, if it's unsuccessful

			end
		end

		def edit
			@beverage=Beverage.find(params[:id]) #looking for something by its unique id
		end

		def update
			@beverage=Beverage.find(params[:id]) #looking for something by its unique id
			#@assign = params.require(:beverage).permit(:bev_type, :price, :quantity, :roast, :brew, :expiration_date, :combo_id)
			#raise @assign.inspect
			if @beverage.update_attributes(params.require(:beverage).permit(:bev_type, :price, :quantity, :roast, :brew, :expiration_date, :combo_id)) #params.require came in rails 4. This whitelists fields and tells you which fields can be changed via the form. update_attributes updates the same fields that create would create in the first place. Only goes in here if the update_attributes completed succesfully.
			
					redirect_to beverages_path #we know it's called beverages_path based on typing in 'rake routes' and figuring out the prefix for the index view
			else 		#goes here if it's not successful
				render 'edit' #this is a partial. don't worry about what this is yet. WE haven't talked about it much yet. This tells you to go back to the edit view, if it's unsuccessful

			end
		end

		def show
			@beverage=Beverage.find(params[:id])
		end

		def destroy
			@beverage=Beverage.find(params[:id])
			@beverage.destroy
			redirect_to beverages_path
		end
end

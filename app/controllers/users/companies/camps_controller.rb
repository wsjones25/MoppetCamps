module Users
	module Companies
		class CampsController < ApplicationController
			before_action :set_camp, only: [:show, :edit, :update, :destroy]
			
	    def show
	    end

	    def edit
	    end

	    def new
	    	@camp = current_user.company.camps.build
	    end

	    def create
	    	@camp = current_user.company.camps.build(camp_params)

	    	respond_to do |format|
	    		if @camp.save
	    			format.html { redirect_to user_company_path, notice: "You club is now live." }
	    		else
	    			format.html { render :new }
	    		end
	    	end
	    end

	    def update
	      respond_to do |format|
	        if @camp.update(camp_params)
	          format.html { redirect_to user_company_camp_path(@camp), notice: 'Your record sucessfully updated.'}
	        else 
	          format.html { render :edit }
	        end
	      end
	    end

	    def destroy
				@camp.destroy
		    respond_to do |format|
		      format.html { redirect_to user_company_path, notice: 'Record was removed.' }
		    end
			end

			private
			def camp_params
        params.require(:camp).permit(
        :name, 
        :camp_type, 
        :length, 
        :age_range,
        :activities,
        :capacity,
        :description,
        :postcode,
        :price,
        :coordinator,
        :things_to_bring
        )
	    end

			def set_camp
      	@camp = Camp.find(params[:id])
    	end
	
		end
	end
end
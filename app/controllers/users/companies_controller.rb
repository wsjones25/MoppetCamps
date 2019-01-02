module Users
  class CompaniesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_company, only: [:show, :edit, :update]
   
    def show
    end

    def new
      @company = current_user.build_company
    end

    def edit
    end

    def create
        @company = current_user.build_company(company_params)

        respond_to do |format|
            if @company.save
              format.html { redirect_to user_company_path, notice: 'Your company is now live.' }
            else 
              format.html { render :new }
            end
          end
    end

    def update
        respond_to do |format|
            if @company.update(company_params)
              format.html { redirect_to user_company_path, notice: 'Your record sucessfully updated.'}
            else 
              format.html { render :edit}
            end
          end
    end

    private
    def company_params
        params.require(:company).permit(
        :user_id, 
        :company_name, 
        :welfare, 
        :childcare_voucher_info,
        :staff_info,
        :about
        )
    end

    def set_company
        @company = current_user.company
    end

  end
end
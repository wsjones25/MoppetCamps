class ChangeCompanyToCompanies < ActiveRecord::Migration[5.2]
  def change
  	rename_table :company, :companies
  end
end

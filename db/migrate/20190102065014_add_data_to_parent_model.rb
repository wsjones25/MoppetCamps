class AddDataToParentModel < ActiveRecord::Migration[5.2]
  def change
  	add_column :parents, :first_name, :string
  	add_column :parents, :last_name, :string
  	add_column :parents, :mobile, :string
  	add_column :parents, :postcode, :string
  	add_column :parents, :secondary_first_name, :string
  	add_column :parents, :secondary_last_name, :string
  	add_column :parents, :secondary_mobile, :string
  end
end

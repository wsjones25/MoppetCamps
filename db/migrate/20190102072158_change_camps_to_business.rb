class ChangeCampsToBusiness < ActiveRecord::Migration[5.2]
  def change
  	rename_table :camps, :company
  end
end

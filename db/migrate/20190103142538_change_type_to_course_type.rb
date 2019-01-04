class ChangeTypeToCourseType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :camps, :type, :camp_type
  end
end

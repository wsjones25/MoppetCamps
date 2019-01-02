class CreateCamps < ActiveRecord::Migration[5.2]
  def change
    create_table :camps do |t|
      t.references :user, foreign_key: true
      t.string :company_name
      t.text :about
      t.text :welfare
      t.text :childcare_voucher_info
      t.text :staff_info

      t.timestamps
    end
  end
end

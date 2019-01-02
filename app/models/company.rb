class Company < ApplicationRecord
  belongs_to :user, optional: true

  validates_presence_of :company_name, :about, :welfare, :childcare_voucher_info, :staff_info
end

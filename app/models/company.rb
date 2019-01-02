class Company < ApplicationRecord
  belongs_to :user, optional: true
  has_many :camps

  validates_presence_of :company_name, :about, :welfare, :childcare_voucher_info, :staff_info
end

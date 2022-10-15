class Provider < ApplicationRecord
  validates :provider_name, :contact_name, presence: true
  validates :contact_tel, length: {maximum: 10, too_long: "%{count} characters is the maximun allowed"}
  validates :number_bank_account, length: {maximum: 15, too_long: "%{count} characters is the maximun allowed"}
  validates :dni, format: { with: /(\d{9}).\d?/, message: "Please enter a correct format of NIT"}

  belongs_to :bank
end

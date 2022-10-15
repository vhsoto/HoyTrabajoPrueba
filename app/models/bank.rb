class Bank < ApplicationRecord
  validates :bank_name, presence: true, length: { maximum: 50, too_long: "%{count} characters is the maximun allowed" }

  has_many :providers, dependent: :destroy
end

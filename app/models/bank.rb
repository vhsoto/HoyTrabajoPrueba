class Bank < ApplicationRecord
  validates :bank_name, presence: true, length: { maximum: 10, too_long: "%{count} characters is the maximun allowed" }
end

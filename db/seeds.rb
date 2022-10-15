require 'faker'

15.times do 
  Bank.create!(
    bank_name: Faker::Bank.name
  )
end

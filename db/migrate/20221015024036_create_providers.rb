class CreateProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :providers do |t|
      t.string :provider_name
      t.string :dni
      t.string :contact_name
      t.string :contact_tel
      t.string :number_bank_account
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end

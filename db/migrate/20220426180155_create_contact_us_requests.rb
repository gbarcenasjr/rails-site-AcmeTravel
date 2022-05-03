class CreateContactUsRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_us_requests do |t|
      t.string :name
      t.string :regarding
      t.string :phone_number
      t.string :email_address
      t.text :message

      t.timestamps
    end
  end
end

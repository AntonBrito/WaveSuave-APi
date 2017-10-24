class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.integer :date
      t.integer :providers_id
      t.references :user, foreign_key: true
      # t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end

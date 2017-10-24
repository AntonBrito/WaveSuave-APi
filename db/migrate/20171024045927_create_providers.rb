class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :given_name
      t.string :family_name
      t.string :email
      t.string :specialty
      t.references :user, foreign_key: true
      t.references :appointment, foreign_key: true

      t.timestamps
    end
  end
end

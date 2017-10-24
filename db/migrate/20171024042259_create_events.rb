class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :info
      t.integer :start_date
      t.integer :end_date
      t.references :user, foreign_key: true
      # t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end

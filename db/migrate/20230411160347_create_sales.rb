class CreateSales < ActiveRecord::Migration[7.0]
  def change
    create_table :sales do |t|
      t.references :client, null: false, foreign_key: true
      t.date :date
      t.integer :status

      t.timestamps
    end
  end
end

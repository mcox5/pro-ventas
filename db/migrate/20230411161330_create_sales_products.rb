class CreateSalesProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :sales_products do |t|
      t.references :product, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end

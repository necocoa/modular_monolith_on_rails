class CreateMerchantSites < ActiveRecord::Migration[7.1]
  def change
    create_table :merchant_sites do |t|
      t.references :merchant, null: false, foreign_key: true
      t.boolean :published, null: false, default: false

      t.timestamps
    end
  end
end

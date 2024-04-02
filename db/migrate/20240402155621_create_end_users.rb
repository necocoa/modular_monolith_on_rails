class CreateEndUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :end_users do |t|
      t.string :email, null: false
      t.timestamps
    end
  end
end

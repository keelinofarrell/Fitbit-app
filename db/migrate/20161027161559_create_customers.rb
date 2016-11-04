class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.integer :age
      t.string :gender
      t.string :email

      t.timestamps null: false
    end
  end
end

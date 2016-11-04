class CreateMyFitbits < ActiveRecord::Migration
  def change
    create_table :my_fitbits do |t|
      t.integer :fitbit_id
      t.integer :member_id
      t.integer :steps

      t.timestamps null: false
    end
  end
end

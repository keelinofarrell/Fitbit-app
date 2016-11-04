class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :username
      t.string :password_disgest
      t.string :name
      t.integer :total_steps

      t.timestamps null: false
    end
  end
end

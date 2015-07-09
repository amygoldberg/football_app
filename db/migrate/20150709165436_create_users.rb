class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.boolean :admin
      t.string :name
      t.integer :weekly_score
      t.integer :total_score

      t.timestamps null: false
    end
  end
end

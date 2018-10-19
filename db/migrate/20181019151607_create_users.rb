class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :region
      t.string :city
      t.string :country
      t.string :credential
      t.string :earned
      t.string :status
      
      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.boolean :admin, default: false
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :username
      
      t.timestamps
    end
  end
end

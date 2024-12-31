class Users < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password
      t.string :email_id
      t.text :SQ
      t.text :AK
      t.string :user_mode
      t.datetime :created_on
      t.datetime :updated_on
    end
  end
end

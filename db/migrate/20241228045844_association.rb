class Association < ActiveRecord::Migration[8.0]
  def change
    add_column :literary_works, :user_id, :integer
    add_foreign_key :literary_works, :users 
    add_column :literary_works, :created_on, :datetime
    add_column :literary_works, :updated_on, :datetime
  end
end

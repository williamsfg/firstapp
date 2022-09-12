class AddUserIdToKontakts < ActiveRecord::Migration[7.0]
  def change
    add_column :kontakts, :user_id, :integer
    add_index :kontakts, :user_id
  end
end

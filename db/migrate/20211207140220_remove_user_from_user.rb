class RemoveUserFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :User, :string
  end
end

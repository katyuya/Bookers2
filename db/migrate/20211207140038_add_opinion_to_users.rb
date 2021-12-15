class AddOpinionToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :User, :string
  end
end

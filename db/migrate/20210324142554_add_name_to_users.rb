class AddNameToUsers < ActiveRecord::Migration[6.0]
  def change
    # add_column :users, :name, :string
    t.string :name, null: false, default: ""
    add_column :users, :surname, :string
  end
end

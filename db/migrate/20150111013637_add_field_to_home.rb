class AddFieldToHome < ActiveRecord::Migration
  def change
    add_column :homes, :address, :string
  end
end

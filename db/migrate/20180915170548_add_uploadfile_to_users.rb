class AddUploadfileToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :uploadfile, :string
  end
end

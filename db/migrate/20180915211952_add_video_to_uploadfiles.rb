class AddVideoToUploadfiles < ActiveRecord::Migration[5.0]
  def change
  	add_column :uploadfiles, :video, :string
  end
end

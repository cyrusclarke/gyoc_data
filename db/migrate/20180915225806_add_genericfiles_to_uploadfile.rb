class AddGenericfilesToUploadfile < ActiveRecord::Migration[5.0]
  def change
  	add_column :uploadfiles, :genericfiles, :string
  end
end

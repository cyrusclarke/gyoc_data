class CreateUploadfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :uploadfiles do |t|
      t.string :title
      t.text :description
      t.decimal :size
      t.integer :user_id	
      t.timestamps
    end
      add_index :uploadfiles, :user_id
  end
end

class CreatePhotos < ActiveRecord::Migration
  <%= form.file_field :pictures, multiple: true %>


  def change
    create_table :photos do |t|
      t.string :caption
      t.integer :user_id
      t.integer :place_id

      t.timestamps
    end

    add_index :comments, [:user_id, :place_id]
    add_index :photos, :place_id
    
  end
end

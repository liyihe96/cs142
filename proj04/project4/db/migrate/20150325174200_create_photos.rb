class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.column :photo_id, :string
      t.column :user_id, :integer
      t.column :date_time, :date
      t.column :file_name, :string

      t.timestamps null: false
    end
  end
end

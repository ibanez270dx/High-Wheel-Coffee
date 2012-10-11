class CreateCoffees < ActiveRecord::Migration
  def change
    create_table :coffees do |t|
      t.string   :name
      t.string   :growing_region
      t.string   :cultivar
      t.string   :processing
      t.text     :flavor_profile
      t.string   :primary_photo_file_name
      t.integer  :primary_photo_file_size
      t.string   :primary_photo_content_type
      t.datetime :primary_photo_updated_at      
      t.string   :secondary_photo_file_name
      t.integer  :secondary_photo_file_size
      t.string   :secondary_photo_content_type
      t.datetime :secondary_photo_updated_at
      t.boolean  :featured
      t.timestamps
    end
  end
end

class AddUrlNameToCoffee < ActiveRecord::Migration
  def change
    change_table :coffees do |t|
      t.string :url_name
    end
  end
end

class CreateWagons < ActiveRecord::Migration[6.1]
  def change
    create_table :wagons do |t|
      t.string :number
      t.string :type_wagon
      t.integer :cnt_top_place
      t.integer :cnt_bottom_place

      t.timestamps
    end
  end
end

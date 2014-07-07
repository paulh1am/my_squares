class CreateSquares < ActiveRecord::Migration
  def change
    create_table :squares do |t|
      t.integer :side_length
      t.integer :border_radius
      t.string :color
      t.string :name

      t.timestamps
    end
  end
end

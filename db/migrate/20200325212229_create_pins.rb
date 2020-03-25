class CreatePins < ActiveRecord::Migration[6.0]
  def change
    create_table :pins do |t|
      t.string :name
      t.text :descripcion
      t.string :image

      t.timestamps
    end
  end
end

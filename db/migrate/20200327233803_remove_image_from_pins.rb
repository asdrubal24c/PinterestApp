class RemoveImageFromPins < ActiveRecord::Migration[6.0]
  def change

    remove_column :pins, :image, :string
  end
end

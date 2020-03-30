class AddUserToPin < ActiveRecord::Migration[6.0]
  def change
    add_reference :pins, :user, foreign_key: true
  end
end

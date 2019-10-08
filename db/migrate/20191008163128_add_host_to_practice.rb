class AddHostToPractice < ActiveRecord::Migration[6.0]
  def change
    add_column :practices, :owner_id, :integer
  end
end

class AddDescriptionPractices < ActiveRecord::Migration[6.0]
  def change
    add_column :practices, :description, :text

  end
end

class CreateSalas < ActiveRecord::Migration[6.0]
  def change
    change_table :users do |t|
      t.string :description
    end
  end
end

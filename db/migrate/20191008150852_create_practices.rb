class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.datetime :date
      t.string :location
    end
  end
end

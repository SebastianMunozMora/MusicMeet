class ChangeUsers < ActiveRecord::Migration[6.0]
  def change
    t.string instrument
    t.string style
  end
end

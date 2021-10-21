class CreateCounts < ActiveRecord::Migration[6.1]
  def change
    create_table :counts do |t|
      t.integer :view

      t.timestamps
    end
  end
end

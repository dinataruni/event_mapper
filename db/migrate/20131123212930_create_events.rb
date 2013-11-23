class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.integer :id
      t.float :lat
      t.float :lon
      t.integer :radius
      t.text :description
      t.string :event_url
      t.string :time

      t.timestamps
    end
  end
end

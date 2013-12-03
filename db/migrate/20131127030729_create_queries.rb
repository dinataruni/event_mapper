class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :time
      t.integer :lat
      t.integer :lon
      t.integer :category
      t.integer :radius
      t.integer :page

      t.timestamps
    end
  end
end

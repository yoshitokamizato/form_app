class CreateStation1s < ActiveRecord::Migration
  def change
    create_table :station1s do |t|
      t.string :station
      t.timestamps
    end
  end
end

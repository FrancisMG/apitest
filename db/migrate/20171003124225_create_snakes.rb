class CreateSnakes < ActiveRecord::Migration[5.1]
  def change
    create_table :snakes do |t|
      t.string :first_name

      t.timestamps
    end
  end
end

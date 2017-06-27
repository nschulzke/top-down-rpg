class CreateMonsters < ActiveRecord::Migration[5.1]
  def change
    create_table :monsters do |t|
      t.string :name
      t.integer :x_pos
      t.integer :y_pos
      t.integer :health

      t.timestamps
    end
  end
end

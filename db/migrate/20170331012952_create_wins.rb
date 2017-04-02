class CreateWins < ActiveRecord::Migration[5.0]
  def change
    create_table :wins do |t|
      t.string :name

      t.timestamps
    end
  end
end

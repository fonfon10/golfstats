class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.integer :score
      t.integer :win_loose_tie

      t.timestamps
    end
  end
end

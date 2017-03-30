class ChangeScoreffToResults < ActiveRecord::Migration[5.0]
  def change
      change_column :results, :score, :float
  change_column :results, :win_loose_tie, :float

  end
end

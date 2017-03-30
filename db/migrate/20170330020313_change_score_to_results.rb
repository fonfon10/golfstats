class ChangeScoreToResults < ActiveRecord::Migration[5.0]
  def change

  change_column :results, :score, :decimal
  change_column :results, :win_loose_tie, :decimal


  end
end

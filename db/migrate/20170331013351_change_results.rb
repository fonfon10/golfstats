class ChangeResults < ActiveRecord::Migration[5.0]
  def change
    remove_column :results, :win_loose_tie
    add_column :results, :win_id, :integer

  end
end

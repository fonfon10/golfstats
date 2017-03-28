class AddIdsToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :results, :user_id, :integer
    add_column :results, :event_id, :integer
  end
end

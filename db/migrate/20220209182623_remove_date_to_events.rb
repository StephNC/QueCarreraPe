class RemoveDateToEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :date
  end
end

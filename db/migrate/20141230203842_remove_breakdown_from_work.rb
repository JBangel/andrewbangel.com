class RemoveBreakdownFromWork < ActiveRecord::Migration
  def change
    remove_column :works, :breakdown, :string
  end
end

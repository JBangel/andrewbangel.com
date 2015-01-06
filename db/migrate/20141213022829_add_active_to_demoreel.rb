class AddActiveToDemoreel < ActiveRecord::Migration
  def change
    add_column :demoreels, :active, :boolean
  end
end

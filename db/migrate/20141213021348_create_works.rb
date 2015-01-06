class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.string :title
      t.string :video
      t.string :breakdown
      t.boolean   :active

      t.timestamps
    end
  end
end

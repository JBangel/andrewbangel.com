class CreateDemoreels < ActiveRecord::Migration
  def change
    create_table :demoreels do |t|
      t.string :video
      t.string :resume
      t.string :breakdown

      t.timestamps
    end
  end
end

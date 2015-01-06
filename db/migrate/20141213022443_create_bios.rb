class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :title
      t.text :body
      t.boolean :active

      t.timestamps
    end
  end
end

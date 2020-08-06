class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.integer :look_id
      t.string :link

      t.timestamps
    end
  end
end

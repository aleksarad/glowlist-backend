class CreateLooks < ActiveRecord::Migration[6.0]
  def change
    create_table :looks do |t|
      t.string :name
      t.string :description
      t.string :finished_look, default: ''
      t.string :colors, array: true, default: []
      t.boolean :completed, default: false
      t.integer :user_id
      t.json :sketch, default: {}

      t.timestamps
    end
    add_index :looks, :colors, using: :gin
  end
end

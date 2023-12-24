class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.timestamps
    end
  end
end

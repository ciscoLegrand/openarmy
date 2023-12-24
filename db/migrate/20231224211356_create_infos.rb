class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|
      t.string :main_title
      t.string :main_subtitle
      t.string :secondary_title
      t.string :secondary_subtitle
      t.text :about
      t.timestamps
    end
  end
end

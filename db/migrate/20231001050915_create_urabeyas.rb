class CreateUrabeyas < ActiveRecord::Migration[6.1]
  def change
    create_table :urabeyas do |t|
      t.string :title
      t.string :teacher
      t.string :number
      t.string :class_name
      t.string :class_url
      t.timestamps
    end
  end
end

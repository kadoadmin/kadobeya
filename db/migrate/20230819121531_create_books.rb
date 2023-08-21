class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :category
      t.integer :number
      t.string :title
      t.string :author
      t.string :publisher
      t.string :date
      t.string :detail
      t.timestamps
    end
  end
end

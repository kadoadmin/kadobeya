class CreateRules < ActiveRecord::Migration[6.1]
  def change
    create_table :rules do |t|
      t.string :title
      t.string :body
      t.timestamps
    end
  end
end

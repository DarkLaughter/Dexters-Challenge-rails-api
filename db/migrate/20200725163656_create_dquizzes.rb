class CreateDquizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :dquizzes do |t|
      t.integer :level
      t.belongs_to :dcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end

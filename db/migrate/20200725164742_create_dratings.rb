class CreateDratings < ActiveRecord::Migration[6.0]
  def change
    create_table :dratings do |t|
      t.integer :score
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :dquiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateResults < ActiveRecord::Migration[6.0]
  def change
    create_table :results do |t|
      t.integer :num_correct
      t.integer :num_incorrect
      t.integer :time
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :q_text
      t.string :correct
      t.string :incorrect1
      t.string :incorrect2
      t.string :incorrect3
      t.belongs_to :quiz, null: false, foreign_key: true

    end
  end
end

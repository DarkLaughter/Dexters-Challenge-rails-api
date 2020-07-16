class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.integer :level
      t.belongs_to :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

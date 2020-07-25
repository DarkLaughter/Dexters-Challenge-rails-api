class CreateDquestions < ActiveRecord::Migration[6.0]
  def change
    create_table :dquestions do |t|
      t.string :q_text
      t.string :correct
      t.string :incorrect
      t.belongs_to :dquiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

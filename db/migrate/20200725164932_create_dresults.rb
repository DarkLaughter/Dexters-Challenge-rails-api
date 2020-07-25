class CreateDresults < ActiveRecord::Migration[6.0]
  def change
    create_table :dresults do |t|
      t.integer :time
      t.integer :num_incorrect
      t.integer :num_correct
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :dquiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

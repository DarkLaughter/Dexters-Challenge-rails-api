class CreateDcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :dcategories do |t|
      t.string :name

      t.timestamps
    end
  end
end

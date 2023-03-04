class CreateCategoryTransacts < ActiveRecord::Migration[7.0]
  def change
    create_table :category_transacts do |t|
      t.references :category, null: false, foreign_key: true
      t.references :transact, null: false, foreign_key: true
      t.timestamps
    end
  end
end

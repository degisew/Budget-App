class CreateTransacts < ActiveRecord::Migration[7.0]
  def change
    create_table :transacts do |t|
      t.string :name
      t.string :amount

      t.timestamps
    end
  end
end

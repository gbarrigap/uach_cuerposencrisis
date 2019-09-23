class CreateCapsulas < ActiveRecord::Migration[6.0]
  def change
    create_table :capsulas do |t|
      t.references :obra, null: false, foreign_key: true
      t.references :concepto, null: false, foreign_key: true

      t.timestamps
    end
  end
end

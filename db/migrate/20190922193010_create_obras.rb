class CreateObras < ActiveRecord::Migration[6.0]
  def change
    create_table :obras do |t|
      t.string :titulo
      t.string :coreografia
      t.text :resumen
      t.string :url_video
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateCoreografos < ActiveRecord::Migration[6.0]
  def change
    create_table :coreografos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

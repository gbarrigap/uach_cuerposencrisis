class CreateRepositorios < ActiveRecord::Migration[6.0]
  def change
    create_table :repositorios do |t|

      t.timestamps
    end
  end
end

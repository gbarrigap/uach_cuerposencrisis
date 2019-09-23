class CreateConceptos < ActiveRecord::Migration[6.0]
  def change
    create_table :conceptos do |t|
      t.string :titulo
      t.string :video_url

      t.timestamps
    end
  end
end

class CreateRunwayModels < ActiveRecord::Migration[5.1]
  def change
    create_table :runway_models do |t|
      t.string :name
      t.string :mantra
      t.string :photo_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

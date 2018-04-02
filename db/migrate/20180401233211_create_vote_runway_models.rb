class CreateVoteRunwayModels < ActiveRecord::Migration[5.1]
  def change
    create_table :vote_runway_models do |t|
      t.references :vote, foreign_key: true
      t.references :runway_model, foreign_key: true

      t.timestamps
    end
  end
end

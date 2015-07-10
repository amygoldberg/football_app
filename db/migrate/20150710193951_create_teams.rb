class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo_url
      t.references :game, index: true, foreign_key: true
    end
  end
end

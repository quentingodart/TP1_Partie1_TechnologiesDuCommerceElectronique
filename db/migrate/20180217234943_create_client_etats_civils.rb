class CreateClientEtatsCivils < ActiveRecord::Migration[5.1]
  def change
    create_table :client_etats_civils do |t|
      t.references :client, foreign_key: true
      t.references :etascivil, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin

      t.timestamps
    end
  end
end

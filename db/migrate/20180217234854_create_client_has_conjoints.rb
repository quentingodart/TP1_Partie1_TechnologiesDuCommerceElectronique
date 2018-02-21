class CreateClientHasConjoints < ActiveRecord::Migration[5.1]
  def change
    create_table :client_has_conjoints do |t|
      t.references :client, foreign_key: true
      t.references :client_has_conjoint, foreign_key: true
      t.datetime :DateDebut
      t.datetime :DateFin

      t.timestamps
    end
  end
end

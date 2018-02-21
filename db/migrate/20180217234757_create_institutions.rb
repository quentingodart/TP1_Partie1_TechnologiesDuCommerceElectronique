class CreateInstitutions < ActiveRecord::Migration[5.1]
  def change
    create_table :institutions do |t|
      t.string :Nom
      t.references :adresse, foreign_key: true

      t.timestamps
    end
  end
end

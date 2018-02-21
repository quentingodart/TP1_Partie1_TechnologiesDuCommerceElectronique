class CreateAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :adresses do |t|
      t.string :NumeroCivique
      t.string :Rue
      t.string :CodePosatl
      t.string :Ville
      t.string :Province

      t.timestamps
    end
  end
end

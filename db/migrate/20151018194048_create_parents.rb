class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :nom
      t.string :prenom
      t.date :date_de_naissance
      t.string :adresse
      t.string :telephone

      t.timestamps
    end
  end
end

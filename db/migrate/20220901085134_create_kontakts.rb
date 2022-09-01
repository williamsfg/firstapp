class CreateKontakts < ActiveRecord::Migration[7.0]
  def change
    create_table :kontakts do |t|
      t.string :förnamn
      t.string :efternamn
      t.string :title
      t.string :mobilnummer
      t.string :email

      t.timestamps
    end
  end
end

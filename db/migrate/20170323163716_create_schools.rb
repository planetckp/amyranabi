class CreateSchools < ActiveRecord::Migration[5.0]
  def change
    create_table :schools do |t|
      t.string :name_of_the_school
      t.string :board
      t.string :typ
      t.string :name_of_the_principal
      t.text :address
      t.string :contact_person
      t.string :contact_number
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end

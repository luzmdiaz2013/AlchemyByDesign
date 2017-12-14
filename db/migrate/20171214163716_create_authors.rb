class CreateAuthors < ActiveRecord::Migration[5.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :university
      t.string :coAuthors


      t.timestamps
    end
  end
end

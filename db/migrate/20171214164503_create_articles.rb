class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author_id
      t.string :abstract



      t.timestamps
    end
  end
end

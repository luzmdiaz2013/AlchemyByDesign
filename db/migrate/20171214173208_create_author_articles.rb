class CreateAuthorArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :author_articles do |t|
      t.integer :author_id
      t.integer :article_id

      t.timestamps
    end
  end
end

class ChangeArticlesToPublications < ActiveRecord::Migration[5.1]
  def change
    rename_table :articles, :publications
  end
end

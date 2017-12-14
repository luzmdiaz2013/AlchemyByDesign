class AuthorArticle < ApplicationRecord
  t.belongs_to :author
  t.belongs_to :article

end

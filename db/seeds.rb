# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.create(name: 'Hernandez, D.', university: 'Columbia University')
Author.create(name: 'Hernandez, D.', university: 'Columbia University', coAuthors: 'Bird, S. ')
Author.create(name: 'Hernandez, D.', university: 'Columbia University', coAuthors: 'Weinstein, H., & Munoz-Laboy, M.')

Article.create( title: 'I’m gonna call my lawyer', abstract: 'shifting legal consciousness at the intersection of inequality. In Special Issue Interdisciplinary Legal Studies: The Next Generation (pp. 95–121). doi:10.1108/s1059-4337(2010)0000051007')
Article.create( title: 'Energy Burden and the Need for Integrated Low-Income Housing and Energy Policy', abstract: 'Poverty & Public Policy, 2: 5–25. doi:10.2202/1944-2858.1095')
Article.create( title: 'Youth perspectives on the intersections of violence, gender, and hip-hop', abstract: 'Youth & Society, 44(4), 587-608. doi:10.1177/0044118X11408746')

AuthorArticle.create(author_id: 1, article_id: 1)
AuthorArticle.create(author_id: 2, article_id: 2)
AuthorArticle.create(author_id: 3, article_id: 3)


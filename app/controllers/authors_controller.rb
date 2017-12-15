class AuthorsController < ApplicationController
      def articles
          @articles = articles.all
      end

end

class AuthorsController < ApplicationController
      def articles
          @publication = Publication.all
      end

end

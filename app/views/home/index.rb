# app/views/home/show.rb

module ArticlesForAi
  module Views
    module Home
      class Index < ArticlesForAi::View
        include Deps["persistence.rom"]

        expose :articles do
          @articles_repo = ArticlesForAi::App["repositories.articles"]

          @articles_repo.all
        end
      end
    end
  end
end

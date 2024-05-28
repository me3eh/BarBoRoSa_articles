# app/actions/home/show.rb

module ArticlesForAi
  module Actions
    module Home
      class Index < ArticlesForAi::Action
        def handle(request, response)
          response.render(
            view,
            page: request.params[:page] || 1,
            per_page: request.params[:per_page] || 5
          )
        end
      end
    end
  end
end

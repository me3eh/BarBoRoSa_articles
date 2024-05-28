# app/views/home/show.rb

module ArticlesForAi
  module Views
    module Home
      class Index < ArticlesForAi::View
        include Deps["persistence.rom"]

        expose :articles do
          rom.relations[:articles]
             .select(:title, :body, :id)
             .order(:title)
             .to_a
        end
      end
    end
  end
end

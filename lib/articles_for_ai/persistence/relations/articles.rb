module ArticlesForAi
  module Persistence
    module Relations
      class Articles < ROM::Relation[:sql]
        schema(:articles) do
          attribute :id, Types::Integer
          attribute :title, Types::String
          attribute :body, Types::String
        end
      end
    end
  end
end

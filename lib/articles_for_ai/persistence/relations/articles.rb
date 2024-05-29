module ArticlesForAi
  module Persistence
    module Relations
      class Articles < ROM::Relation[:sql]
        schema(:articles, infer: true) do
          attribute :id, Types::Integer
          attribute :title, Types::String
          attribute :body, Types::String
          primary_key :id
        end
      end
    end
  end
end

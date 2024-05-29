# frozen_string_literal: true

module ArticlesForAi
  module Repositories
    class Articles < ArticlesForAi::Repository[:articles]
      commands :create, update: :by_pk, delete: :by_pk

      def all
        articles.order(:id).to_a
      end

      def by_name(name)
        articles.where(name: name).to_a.first
      end

      def by_id(id)
        articles.by_pk(id).one!
      end
    end
  end
end

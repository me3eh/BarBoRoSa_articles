# frozen_string_literal: true

require "rom-repository"
module ArticlesForAi
  class Repository < ROM::Repository::Root
    include Deps[container: "persistence.rom"]
  end
end

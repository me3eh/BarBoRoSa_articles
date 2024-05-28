# frozen_string_literal: true

require "hanami/rake_tasks"
require "rom/sql/rake_task"
Dir['lib/tasks/*.rake'].each { load _1 }

task :environment do
  require_relative "config/app"
  require "hanami/prepare"
end

#
#   end
# end
namespace :db do
  desc "take staging data that is relevant for production"
  task setup: :environment do
    Hanami.boot
    Hanami.app.prepare(:persistence)
    ROM::SQL::RakeSupport.env = Hanami.app["persistence.config"]
  end
end

# namespace :db do
#   task setup: :environment do
#     Hanami.boot
#     Hanami.app.prepare(:persistence)
#     ROM::SQL::RakeSupport.env = Hanami.app["persistence.config"]
#   end
# end

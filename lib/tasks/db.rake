require "csv"

# namespace :dataimport do
#   desc "take staging data that is relevant for production"
#   task staging_dump: :environment do
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

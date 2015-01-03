require 'rails/generators/migration'

class BaseGenerator < Rails::Generators::Base
  include Rails::Generators::Migration

  def self.next_migration_number(*args)
    Time.now.utc.strftime("%Y%m%d%H%M%S").to_i.to_s
  end

end

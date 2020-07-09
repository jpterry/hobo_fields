# frozen_string_literal: true

require 'hobo_fields'
require 'rails'

module HoboFields
  class Railtie < Rails::Railtie

    ActiveSupport.on_load(:active_record) do
      require 'hobo_fields/extensions/active_record/fields_declaration'
    end

  end
end

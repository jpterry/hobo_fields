require 'hobo_fields/types/enum_string'

module HoboFields

  class FieldDeclarationDsl < BlankSlate

    include HoboFields::Types::EnumString::DeclarationHelper

    def initialize(model)
      @model = model
    end

    attr_reader :model


    def timestamps(*options)
      field(:created_at, :datetime, *options)
      field(:updated_at, :datetime, *options)
    end


    def field(name, type, *args)
      @model.declare_field(name, type, *args)
    end


    def method_missing(name, *args)
      field(name, args.first, *args.rest)
    end

  end

end

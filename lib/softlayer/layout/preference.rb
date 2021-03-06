module Softlayer
  module Layout
    class Preference < Softlayer::Entity
      autoload :Type, 'softlayer/layout/preference/type'
      attr_accessor :id
      attr_accessor :layout_preference_type_id
      attr_accessor :value
      attr_accessor :layout_preference_type

      class Representer < Softlayer::Entity::Representer
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :layout_preference_type_id, type: Integer
        property :value, type: String
      end
    end
  end
end

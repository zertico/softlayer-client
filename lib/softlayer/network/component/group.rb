module Softlayer
  class Network
    class Component
      class Group < Softlayer::Entity
        attr_accessor :group_type_id
        attr_accessor :network_component_count
        attr_accessor :network_components

        class Representer < Softlayer::Entity::Representer
          include Representable::Hash
          include Representable::Coercion
          property :group_type_id, type: Integer
          property :network_component_count, type: BigDecimal
        end
      end
    end
  end
end

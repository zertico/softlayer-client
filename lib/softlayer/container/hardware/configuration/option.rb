module Softlayer
  module Container
    module Hardware
      class Configuration
        class Option < Softlayer::Entity
          attr_accessor :item_price
          attr_accessor :preset
          attr_accessor :template

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
          end
        end
      end
    end
  end
end

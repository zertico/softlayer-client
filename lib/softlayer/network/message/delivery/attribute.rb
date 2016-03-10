module Softlayer
  class Network
    module Message
      class Delivery
        class Attribute < Softlayer::Model
          attr_accessor :value
          attr_accessor :network_message_delivery

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :value, type: String
          end
        end
      end
    end
  end
end

module Softlayer
  module Container
    module Software
      module Component
        module HostIps
          class Policy < Softlayer::Entity
            attr_accessor :policy
            attr_accessor :policy_title

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :policy, type: String
              property :policy_title, type: String
            end
          end
        end
      end
    end
  end
end

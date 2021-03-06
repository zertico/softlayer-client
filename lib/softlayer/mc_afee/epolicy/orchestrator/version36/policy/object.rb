module Softlayer
  module McAfee
    module Epolicy
      module Orchestrator
        module Version36
          module Policy
            module Object < Softlayer::Entity
              attr_accessor :name

              class Representer < Softlayer::Entity::Representer
                include Representable::Hash
                include Representable::Coercion
                property :name, type: String
              end
            end
          end
        end
      end
    end
  end
end

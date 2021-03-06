module Softlayer
  module Container
    module Network
      module Subnet
        module Registration
          class TransactionDetails < Softlayer::Entity
            attr_accessor :subnet_references
            attr_accessor :transaction_id

            class Representer < Softlayer::Entity::Representer
              include Representable::Hash
              include Representable::Coercion
              property :transaction_id, type: Integer
            end
          end
        end
      end
    end
  end
end

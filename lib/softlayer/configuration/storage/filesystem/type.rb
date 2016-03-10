module Softlayer
  module Configuration
    module Storage
      module Filesystem
        class Type < Softlayer::Model
          attr_accessor :key_name
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :key_name, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end

module Softlayer
  module Virtual
    class Guest
      class Attribute
        class Type < Softlayer::Entity
          attr_accessor :keyname
          attr_accessor :name

          class Representer < Softlayer::Entity::Representer
            include Representable::Hash
            include Representable::Coercion
            property :keyname, type: String
            property :name, type: String
          end
        end
      end
    end
  end
end

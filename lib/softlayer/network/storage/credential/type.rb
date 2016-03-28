module Softlayer
  class Network
    class Storage
      class Credential
        class Type < Softlayer::Model
          attr_accessor :create_date
          attr_accessor :description
          attr_accessor :key_name
          attr_accessor :modify_date
          attr_accessor :name

          class Representer < Representable::Decorator
            include Representable::Hash
            include Representable::Coercion
            property :create_date, type: DateTime
            property :description, type: String
            property :key_name, type: String
            property :modify_date, type: DateTime
            property :name, type: String
          end
        end
      end
    end
  end
end
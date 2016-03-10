module Softlayer
  module Catalyst
    class Affiliate < Softlayer::Model
      attr_accessor :id
      attr_accessor :name
      attr_accessor :skip_credit_card_verification_flag

      class Representer < Representable::Decorator
        include Representable::Hash
        include Representable::Coercion
        property :id, type: Integer
        property :name, type: String
        property :skip_credit_card_verification_flag, type: Boolean
      end
    end
  end
end

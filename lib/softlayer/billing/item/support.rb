module Softlayer
  module Billing
    class Item
      class Support < Softlayer::Billing::Item

        class Representer < Softlayer::Billing::Item::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end

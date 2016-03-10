module Softlayer
  class Hardware
    class Component
      class DriveController < Softlayer::Hardware::Component

        class Representer < Softlayer::Hardware::Component::Representer
          include Representable::Hash
          include Representable::Coercion
        end
      end
    end
  end
end

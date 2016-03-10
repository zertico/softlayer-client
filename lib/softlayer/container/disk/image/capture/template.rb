module Softlayer
  module Container
    module Disk
      module Image
        module Capture
          class Template < Softlayer::Model
            autoload :Volume, 'softlayer/container/disk/image/capture/template/volume'
            attr_accessor :description
            attr_accessor :name
            attr_accessor :summary
            attr_accessor :volumes

            class Representer < Representable::Decorator
              include Representable::Hash
              include Representable::Coercion
              property :description, type: String
              property :name, type: String
              property :summary, type: String
            end
          end
        end
      end
    end
  end
end

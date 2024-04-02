module Serializer
  class Base
    include ActiveModel::Serializers::JSON

    private

    def attribute_names_for_serialization = raise NotImplementedError
  end
end

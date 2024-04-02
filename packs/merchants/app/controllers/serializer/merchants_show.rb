module Serializer
  class MerchantsShow < Base
    def initialize(merchant)
      @merchant = merchant
    end

    delegate :id, to: :@merchant
    def attribute_names_for_serialization = %i[id]
  end
end

module Serializer
  class MerchantsIndex < Base
    def initialize(merchants)
      @merchants = merchants.map { Merchant.new(_1) }
    end

    class Merchant < Base
      def initialize(merchant)
        @merchant = merchant
      end

      private

      delegate :id, :created_at, to: :@merchant
      def attribute_names_for_serialization = %i[id created_at]
    end

    private

    attr_reader :merchants
    def attribute_names_for_serialization = %i[merchants]
  end
end

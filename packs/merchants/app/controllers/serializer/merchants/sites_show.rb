module Serializer
  module Merchants
    class SitesShow < Base
      def initialize(site)
        @site = site
      end

      private

      delegate :published, to: :@site
      def attribute_names_for_serialization = %i[published]
    end
  end
end

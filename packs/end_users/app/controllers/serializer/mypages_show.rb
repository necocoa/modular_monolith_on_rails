module Serializer
  class MypagesShow < Base
    def initialize(end_user)
      @end_user = end_user
    end

    delegate :id, to: :@end_user
    def attribute_names_for_serialization = %i[id]
  end
end

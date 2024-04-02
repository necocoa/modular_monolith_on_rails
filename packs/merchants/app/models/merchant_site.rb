class MerchantSite < ApplicationRecord
  belongs_to :merchant

  validates :published, inclusion: { in: [true, false] }
end

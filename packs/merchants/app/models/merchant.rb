class Merchant < ApplicationRecord
  has_one :site, class_name: 'MerchantSite', dependent: :destroy

  after_create :setup_merchant

  private

  def setup_merchant
    create_site
  end
end

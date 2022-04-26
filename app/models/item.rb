class Item < ApplicationRecord

  validates :name,                   presence: true
  validates :explain,                presence: true
  validates :category_id,            presence: true
  validates :sales_status_id,        presence: true 
  validates :shipping_fee_status_id, presence: true
  validates :prefecture_id,          presence: true
  validates :scheduled_delivery_id,  presence: true
  validates :price,                  presence: true

  belongs_to :user
  has_one_attached :image

end

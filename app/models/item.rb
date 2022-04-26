class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :name,                   presence: true
  validates :explain,                presence: true
  validates :category_id,            presence: true, numericality:{ other_than: 1 , message: "can't be blank"}
  validates :sales_status_id,        presence: true, numericality:{ other_than: 1 , message: "can't be blank"}
  validates :shipping_fee_status_id, presence: true, numericality:{ other_than: 1 , message: "can't be blank"}
  validates :prefecture_id,          presence: true, numericality:{ other_than: 1 , message: "can't be blank"}
  validates :scheduled_delivery_id,  presence: true, numericality:{ other_than: 1 , message: "can't be blank"}
  validates :price,                  presence: true
  belongs_to :user
  has_one_attached :image
  belongs_to_active_hash :category, :prefecture, :sales_status, :shipping_fee_status, :scheduled_delivery

end

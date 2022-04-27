class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user

  belongs_to_active_hash :category
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :sales_status
  belongs_to_active_hash :shipping_fee_status
  belongs_to_active_hash :scheduled_delivery

  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :name
    validates :explain
    validates :category_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :prefecture_id
    validates :scheduled_delivery_id
    
    #半角数字以外を入力したときのエラー表示
    validates :price, numericality: { message: 'is invalid. Input half-width characters' } 
    
    validates :price,
              numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999,
                              message: 'is out of setting range' }
  end

  with_options numericality: { other_than: 1, message: "can't be blank" } do
    validates :category_id
    validates :prefecture_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :scheduled_delivery_id
  end
end

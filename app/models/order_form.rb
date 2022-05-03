class OrderForm
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :address, :building, :phone_number, :token

  with_options presence: true do
    validates :user_id
    validates :item_id

    validates :token
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
    validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :address
    validates :phone_number

  end
 # 半角数値以外を入力したときのエラー
    validates :phone_number, format: { with: /\A[0-9]+\z/, message: 'is invalid. Input only numbert' }

 # 文字数が足りなかったときのエラー表示
    validates :phone_number, length: { minimum: 10, maximum: 11, message: 'is too short' }


  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    ShippingAddress.create(order_id: order.id, postal_code: postal_code, prefecture_id: prefecture_id, city: city,
                           address: address, building: building, phone_number: phone_number)
  end
end

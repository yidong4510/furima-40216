class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validates :price, numericality: {only_integer: true}, inclusion: { in: 300..9_999_999, message: 'must be between 300 and 9,999,999' }
  validates :name, length: { maximum: 40, message: 'must be within 40 characters' }
  validates :description, length: { maximum: 1000, message: 'must be within 1000 characters' }
  validates :image, presence: true
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_charge
  belongs_to :prefecture
  belongs_to :day

  validates :name, :description, :price, presence: true

  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :shipping_charge_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefecture_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :day_id, numericality: { other_than: 1, message: "can't be blank" }
end

class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :assessment

  with_options presence: true do
    validates :beer_name
    validates :image
    validates :style
    validates :description
    validates :bar_name

    with_options numericality: { other_than: 0, message: "can't be blank" } do
      validates :assessment_id
    end
  end
end

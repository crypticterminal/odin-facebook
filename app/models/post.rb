class Post < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  validates :content, presence: true
end

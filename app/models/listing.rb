class Listing < ApplicationRecord
  validates :title, presence:true
  validates :price, presence: true
  enum condition: { unused: 0, used:1 }

  mount_uploaders :images,ImageUploader
  serialize :images, JSON

end

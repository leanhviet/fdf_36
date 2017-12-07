class Permission < ApplicationRecord
  has_many :user, dependent: :destroy
end

class Championship < ApplicationRecord
	has_many :matches, dependent: :destroy
end

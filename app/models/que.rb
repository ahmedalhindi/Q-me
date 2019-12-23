class Que < ApplicationRecord
    has_many :services, dependent: :destroy
end
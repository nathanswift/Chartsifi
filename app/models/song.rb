class Song < ApplicationRecord
  belongs_to :billboard, optional: true
  belongs_to :artist
end

class Article < ApplicationRecord
	scope :reverse_dates, -> { order(publication_date: :desc) }
end

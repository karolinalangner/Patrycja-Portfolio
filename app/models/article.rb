class Article < ApplicationRecord
    has_rich_text :rich_body
    has_one_attached :cover

    self.per_page = 6
end

class Search < ApplicationRecord

    def search_lessons

        lessons = Lesson.all

        lessons = lessons.where(["name LIKE ?", "%#{keywords}%"]) if keywords.present?
        lessons = lessons.where(["species LIKE ?", "%#{species}%"]) if species.present?
        lessons = lessons.where(["price >= ?", min_price]) if min_price.present?
        lessons = lessons.where(["price <= ?", max_price]) if max_price.present?

        return lessons

    end


end

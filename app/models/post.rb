class Post < ApplicationRecord
    
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}

    # validate :must_have_some_words


    # def must_have_some_words
    #     unless title.match?(/Won't Believe/)
    #         errors.add(:title, "Very Wrong")
    #     end
    # end
end

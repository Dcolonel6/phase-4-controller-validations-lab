class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: {in:["Fiction", "Non-Fiction"]}
    validates :content, length: { minimum: 100}
    

    # def validate_category
    #     unless category == "Fiction" or category == "Non-Fiction"
    #         errors.add(:category,"Category should be either Fiction or Non-Fiction")
    #     end
    # end

    # def validate_content
    #     if content.length <= 100
    #         errors.add(:content,"Content is less than 100 characters")
    #     end
    # end

end

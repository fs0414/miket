class Category < ApplicationRecord
    def default_category_create(args)
        binding.pry
        @category = Category.create([
            {
                name: "goods",
                user_id: args[:user_id]
            },
            {
                name: "furniture",
                user_id: args[:user_id]
            },
            {
                name: "fashion",
                user_id: args[:user_id]
            }
        ]
        )
    end
end

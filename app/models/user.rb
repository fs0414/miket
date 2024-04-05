class User < ApplicationRecord
  authenticates_with_sorcery!

  enum :role, { user: 10, admin: 20 }
end

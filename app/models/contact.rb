class Contact < ApplicationRecord
  enum status: { waiting: 0, confirmed: 1, declined: 2 }
end

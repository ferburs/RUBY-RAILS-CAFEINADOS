class Ticket < ApplicationRecord
  belongs_to :funcion
  belongs_to :user
end

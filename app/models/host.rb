class Host < ApplicationRecord
  belongs_to :org
  belongs_to :event
end

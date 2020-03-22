class Request < ApplicationRecord
  belongs_to :user

  enum confirmed: [:'En cours', :'Validé', :'Refusé']
end

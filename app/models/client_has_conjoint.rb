class ClientHasConjoint < ApplicationRecord
  belongs_to :client
  belongs_to :client_has_conjoint
end

class Document < ApplicationRecord
  belongs_to :person
  enum document_type: { CPF:0, RG:1 }
end

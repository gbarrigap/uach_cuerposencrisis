class Concepto < ApplicationRecord
  has_many :capsulas
  has_many :obras, through: :capsulas
end

class PalType < ApplicationRecord
  PAL_TYPES = ['Normal', 'Grass', 'Ice','Fire', 'Electric', 'Water', 'Dragon',  'Ground', 'Dark' ].freeze

  has_many :pals
end